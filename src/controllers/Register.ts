import Express, { RequestHandler } from "express";
import { StatusCodes } from "http-status-codes";
import { pool } from "../config/database";

const Register = Express.Router();
const registerHandler: RequestHandler = async (req, res) => {
  // Assuming teachers and students are already in their respective tables
  const body = req.body;
  const connection = await pool.getConnection();
  try {
    const valuesToInsert = body.students.map((student: string) => [
      body.teacher,
      student,
    ]);

    // Construct the placeholders and values for the query
    const placeholders = valuesToInsert.map(() => "(?, ?)").join(", ");
    const flattenedValues = valuesToInsert.reduce(
      (acc: string, curr: string) => acc.concat(curr),
      []
    );

    // Construct the query
    const insertQuery = `INSERT INTO teacher_student (teacher_email, student_email) VALUES ${placeholders}`;

    // Execute the single query
    const [result]: any = await connection.execute(
      insertQuery,
      flattenedValues
    );

    if (result.affectedRows !== body.students.length) {
      // Rollback the transaction if insertion failed
      await connection.rollback();
      connection.release();
      throw new Error("Some students were not inserted successfully");
    }
    res.status(StatusCodes.NO_CONTENT);
  } catch (error) {
    // throw error if student already registered
    let message = "";
    if (error.code === "ER_DUP_ENTRY") {
      console.error("Error registering students to teachers:", error.code);
      message = "Error registering students to teachers:" + error.code;
    } else {
      //throw invalid email
      console.error("Error registering students to teachers:");
      message = "Error registering students to teachers:" + error;
    }
    res.status(StatusCodes.BAD_REQUEST).json({ message: message });
  }
};

Register.post("/", registerHandler);

export default Register;
