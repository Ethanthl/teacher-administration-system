import Express, { RequestHandler } from "express";
import { StatusCodes } from "http-status-codes";
import { pool } from "../config/database";
import validator from "validator";

const Suspend = Express.Router();

const suspendHandler: RequestHandler = async (req, res) => {
  // update student
  const setStatus = 2;
  const query = ` UPDATE student
  SET status_id = ?
  WHERE student_email = ?`;
  const body = req.body;
  const connection = await pool.getConnection();
  try {
    if (validator.isEmail(body.student)) {
      const [result]: any = await connection.execute(query, [
        setStatus,
        body.student,
      ]);

      if (result.affectedRows === 0) {
        throw new Error("Database Error");
      }
      console.log(`Student ${body.student} suspended`);
      res.sendStatus(StatusCodes.NO_CONTENT);
    } else {
      throw new Error("Invalid Email");
    }
  } catch (error) {
    console.log(error);
    const message = "Error suspending student: " + error;
    res.status(StatusCodes.BAD_REQUEST).json({ message: message });
  }
};

Suspend.post("/", suspendHandler);

export default Suspend;
