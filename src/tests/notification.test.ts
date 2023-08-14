import Express from "express";
import { StatusCodes } from "http-status-codes";
import request from "supertest";
import { pool } from "../config/database";
import app from "../app"; // Import your Express app

jest.mock("../config/database");

describe("Retrieve students", () => {
  const mockExecute = jest.fn();

  beforeEach(() => {
    jest.clearAllMocks();
  });

  afterAll(() => {
    jest.restoreAllMocks();
  });
  //
  // it("should retrieve list of students that were sent notification", async () => {
  //   // Mocking database connection and execute function
  //   const mockConnection = { execute: mockExecute };
  //   (pool.getConnection as jest.Mock).mockResolvedValue(mockConnection);

  //   mockExecute.mockResolvedValueOnce([{ affectedRows: 1 }]);

  //   const response = await request(app)
  //     .get("/api/retrievefornotifications")
  //     .send({
  //       teacher: "teacherken@gmail.com",
  //       notification:
  //         "Hello students! @studentmiche@gmail.com @studentbob@gmail.com",
  //     });

  //   expect(response.status).toBe(StatusCodes.OK);
  //   expect(response.body.recipients).toEqual({
  //     recipients: ["student1@example.com", "student2@example.com"],
  //   });
  //   expect(mockExecute).toHaveBeenCalledTimes(1);
  // });

  it("should handle invalid email or error in database", async () => {
    // Mocking database connection and execute function
    const mockConnection = { execute: mockExecute };
    (pool.getConnection as jest.Mock).mockResolvedValue(mockConnection);

    // Simulate the scenario where notification insertion fails
    mockExecute.mockResolvedValueOnce({ affectedRows: 0 });

    const response = await request(app)
      .post("/api/retrievefornotifications")
      .send({
        teacher: "teacher@example.com",
        notification: "Hello, students!",
      });

    expect(response.status).toBe(StatusCodes.BAD_REQUEST);
    expect(response.body.error).toBe("Invalid email");
    expect(mockExecute).toHaveBeenCalledTimes(1);
  });

  it("should handle database error", async () => {
    // Mocking database connection and execute function
    const mockConnection = { execute: mockExecute };
    (pool.getConnection as jest.Mock).mockResolvedValue(mockConnection);

    // Simulate a database error during execution
    mockExecute.mockRejectedValueOnce(new Error("Database error"));

    const response = await request(app)
      .post("/api/retrievefornotifications")
      .send({
        teacher: "teacher@example.com",
        notification: "Hello, students!",
      });

    expect(response.status).toBe(StatusCodes.BAD_REQUEST);
    expect(response.body.error).toBe("Invalid email");
    expect(mockExecute).toHaveBeenCalledTimes(1);
  });
});
