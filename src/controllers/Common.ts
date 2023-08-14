import Express, { RequestHandler } from "express";
import { StatusCodes } from "http-status-codes";
import { pool } from "../config/database";
const Common = Express.Router();

const getCommon: RequestHandler = async (req, res) => {

  const connection = await pool.getConnection();

  try {
    const teacherEmail = req.query.teacher as string[];
    if (teacherEmail) {
      //Switch querys based on number of params
      //query for multiple teachers
      const query = Array.isArray(teacherEmail)
        ? `SELECT student_email
        FROM teacher_student
        WHERE teacher_email IN (?)
        GROUP BY student_email
        HAVING COUNT(DISTINCT teacher_email) = ?`
        //query for 1 teacher
        : `SELECT student_email
        FROM teacher_student
        WHERE teacher_email = ?`;
      //Switch req based on number of params
      const [rows]: any = Array.isArray(teacherEmail)
        ? await connection.query(query, [teacherEmail, teacherEmail.length])
        : await connection.query(query, teacherEmail);
      if (rows.length > 0) {
        const commonStudents = rows as any;
        const responseStudents: string[] = [];
        commonStudents.map((row: any) =>
          responseStudents.push(row.student_email)
        );
        res.status(StatusCodes.OK).json({ students: responseStudents });
      } else {
        throw new Error("Invalid Email");
      }
    }
  } catch (error) {
    console.log("Error fetching common students:", error);
    const message = "Error fetching common students:" + error;
    res.status(StatusCodes.BAD_REQUEST).json({ message: message });
  }
};

Common.get("/", getCommon);

export default Common;
