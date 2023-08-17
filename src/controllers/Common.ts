import Express, { RequestHandler } from "express";
import { StatusCodes } from "http-status-codes";
import { pool } from "../config/database";
const Common = Express.Router();
import validator from "validator";

const getCommon: RequestHandler = async (req, res) => {
  const connection = await pool.getConnection();

  try {
    //save as array if there are multiple params
    const teacherEmail = req.query.teacher as string[];
    if (teacherEmail) {
      if (Array.isArray(teacherEmail)) {
        teacherEmail.map((email) => {
          if (validator.isEmail(email) === false) {
            throw new Error("Invalid email");
          }
        });
      } else if (validator.isEmail(teacherEmail) === false) {
        throw new Error("Invalid email");
      }
      const query = `SELECT DISTINCT student_email
        FROM teacher_student
        WHERE teacher_email IN (?)
        GROUP BY student_email`;

      const [rows]: any = await connection.query(query, teacherEmail);

      connection.release();
      if (rows.length > 0) {
        const commonStudents = rows as any;
        const responseStudents: string[] = [];
        commonStudents.map((row: any) =>
          responseStudents.push(row.student_email)
        );
        res.status(StatusCodes.OK).json({ students: responseStudents });
      } else {
        throw new Error("Database error");
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
