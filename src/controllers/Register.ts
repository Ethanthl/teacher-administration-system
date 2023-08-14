import Express, { RequestHandler } from "express";
import { StatusCodes } from "http-status-codes";
import { pool } from "../config/database";

const Register = Express.Router();
const registerHandler: RequestHandler = async (req, res) => {
  // Assuming teachers and students are already in their respective tables
  const insertQuery = `INSERT INTO teacher_student (teacher_email, student_email) VALUES(?,?)`;
  const body = req.body;
  const connection = await pool.getConnection();
  try {
    //loop through array of students and assign teacher to each
    for (const student of body.students) {
      const [result]: any = await connection.execute(insertQuery, [
        body.teacher,
        student,
      ]);
      console.log(`Student ${student} inserted successfully`);
      //throw error if error inserting
      if (result.affectedRows === 0) {
        throw new Error("Invalid Email");
      }
    }
    res.sendStatus(StatusCodes.NO_CONTENT);
  } catch (error) {
    // throw error if student already registered
    let message = "";
    if (error.code === "ER_DUP_ENTRY") {
      console.error("Error registering students to teachers:", error.code);
      message = "Error registering students to teachers:" + error.code;
    } else {
      //throw invalid email
      console.error("Error registering students to teachers:");
      message = "Error registering students to teachers: Email not found";
    }
    res.status(StatusCodes.BAD_REQUEST).json({ message: message });
  }
};

Register.post("/", registerHandler);

export default Register;
