import Express, { RequestHandler } from "express";
import { StatusCodes } from "http-status-codes";
import { pool } from "../config/database";
import validator from "validator";
const Notification = Express.Router();

const retrieveNotificationsHandler: RequestHandler = async (req, res) => {
  const connection = await pool.getConnection();
  try {
    const getStudentsQuery = `SELECT student_email FROM teacher_student WHERE teacher_email = ?`;
    const notificationQuery = ` INSERT INTO notification(notification_message, teacher_email) VALUES(?,?)`;
    const getRecipientsQuery = `SELECT r.student_email
    FROM recipient r JOIN student s ON s.student_email = r.student_email WHERE notification_id = ? AND s.status_id = 1`;
    const body = req.body;
    const teacher = body.teacher;
    const parts = body.notification.split("@");
    const message = parts[0].trim(); // Trim any leading/trailing spaces
    //get students associated with teacher
    if (!validator.isEmail(teacher)) {
      throw new Error('Invalid teacher email')
    }
    const [studentEmails]: any = await connection.execute(getStudentsQuery, [
      teacher,
    ]);
    const studentEmailsFixed: string[] = [];
    studentEmails.map((item: any) => {
      studentEmailsFixed.push(item.student_email);
    });
    for (let i = 1; i < parts.length; i += 2) {
      //push extra students into studentEmails
      //concat emails back together
      const studentEmailPart = parts[i].trim();
      const domainPart = parts[i + 1].trim();
      const studentEmail = `${studentEmailPart}@${domainPart}`;
      if (validator.isEmail(studentEmail)) {
        studentEmailsFixed.push(studentEmail);
      }
    }
    //add notifications to notifications table
    const [notificationResult]: any = await connection.execute(
      notificationQuery,
      [message, teacher]
    );
    console.log(notificationResult);
    if (notificationResult.affectedRows === 0) {
      throw new Error("Database error");
    }
    const notificationId = notificationResult.insertId;
    // Create an array of value sets for insertion
    const valuesToInsert = studentEmailsFixed.map((studentEmail) => [
      notificationId,
      studentEmail,
    ]);

    // Build the placeholders for the query
    const placeholders = valuesToInsert.map(() => "(?, ?)").join(", "); //number of items
    const recipientQuery = `INSERT INTO recipient (notification_id, student_email) VALUES ${placeholders}`;
    const flattenedValues = valuesToInsert.reduce(
      (acc, curr) => acc.concat(curr),
      []
    );
    await connection.execute(recipientQuery, flattenedValues);
    //get recipients with same message id from table
    const [recipients]: any = await connection.execute(getRecipientsQuery, [
      notificationId,
    ]);

    //push into array to return as response
    const studentEmailList: string[] = [];
    recipients.map((row: any) => {
      studentEmailList.push(row.student_email);
    });

    res.status(StatusCodes.OK).json({ recipients: studentEmailList });
  } catch (error) {
    res.status(StatusCodes.BAD_REQUEST).json({ error: "Invalid email" });
  }
};

Notification.post("/", retrieveNotificationsHandler);
Notification.get("/", retrieveNotificationsHandler);

export default Notification;
