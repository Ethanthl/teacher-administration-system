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
    for (const student of body.students) {
      const [result]: any = await connection.execute(insertQuery, [
        body.teacher,
        student,
      ]);
      console.log(`Student ${student} inserted successfully`);
      if (result.affectedRows === 0) {
        throw new Error("Invalid Email");
      }
    }
    res.sendStatus(StatusCodes.NO_CONTENT);
  } catch (error) {
    console.error("Error registering students to teachers:", error);
    const message = "Error registering students to teachers:" + error;
    res.status(StatusCodes.BAD_REQUEST).json({ message: message });
  }
};

Register.post("/", registerHandler);

export default Register;
