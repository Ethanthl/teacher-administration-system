import { StatusCodes } from "http-status-codes";
import request from "supertest";
import app from "../app"; // Import your Express app
import { pool } from "../config/database";

jest.mock("../config/database");

describe("Suspend Route", () => {
  it("should suspend a student successfully", async () => {
    // Mocking database connection and execute function
    const mockExecute = jest.fn().mockResolvedValue([[{ affectedRows: 1 }]]);
    const mockConnection = { execute: mockExecute };
    (pool.getConnection as jest.Mock).mockResolvedValue(mockConnection);

    const response = await request(app)
      .post("/api/suspend")
      .send({ student: "studentmary@gmail.com" });
    expect(response.status).toBe(StatusCodes.NO_CONTENT);

  });


  it("should handle database error", async () => {
    const mockExecute = jest.fn().mockRejectedValue(new Error("Database error"));
    const mockConnection = { execute: mockExecute };
    (pool.getConnection as jest.Mock).mockResolvedValue(mockConnection);

    const response = await request(app)
      .post("/api/suspend")
      .send({ student: "student@example.com" });

    expect(response.status).toBe(StatusCodes.BAD_REQUEST);
    expect(response.body.message)

  });
});