import Express, { RequestHandler } from "express";
import { StatusCodes } from "http-status-codes";
import { pool } from "../config/database";

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
    const [result]: any = await connection.execute(query, [
      setStatus,
      body.student,
    ]);
    
    if (result.affectedRows === 0) {
      throw new Error("Invalid Email");
    }
    console.log(`Student ${body.student} suspended`);
    res.sendStatus(StatusCodes.NO_CONTENT);
  } catch (error) {
    console.log(error);
    const message = "Error suspending student: " + error
    res.status(StatusCodes.BAD_REQUEST).json({ message: message });
  }
};

Suspend.post("/", suspendHandler);

export default Suspend;
