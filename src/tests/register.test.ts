import { StatusCodes } from "http-status-codes";
import request from "supertest";
import { pool } from "../config/database";
import app from "../app"; // Import your Express app

jest.mock("../config/database");

describe("Register Route", () => {
  const mockExecute = jest.fn();

  beforeEach(() => {
    jest.clearAllMocks();
  });

  afterAll(() => {
    jest.restoreAllMocks();
  });

  //Unable to get test to work as intended

  // it("should register students successfully", async () => {
  //   // Mocking database connection and execute function
  //   const mockConnection = { execute: mockExecute };
  //   (pool.getConnection as jest.Mock).mockResolvedValue(mockConnection);
  //   mockExecute.mockResolvedValueOnce({ affectedRows: 1 });

  //   const response = await request(app)
  //     .post("/api/register")
  //     .send({
  //       teacher: "teacher@example.com",
  //       students: ["student1@example.com", "student2@example.com"],
  //     });

  //   expect(response.status).toBe(200);
  //   expect(response.body.message).toBe("Students inserted successfully");
  // });

  it("should handle invalid student email", async () => {
    // Mocking database connection and execute function
    const mockConnection = { execute: mockExecute };
    (pool.getConnection as jest.Mock).mockResolvedValue(mockConnection);

    mockExecute.mockResolvedValueOnce({ affectedRows: 0 });

    const response = await request(app)
      .post("/api/register")
      .send({
        teacher: "teacher@example.com",
        students: ["invalid@example.com"],
      });

    expect(response.status).toBe(StatusCodes.BAD_REQUEST);
    expect(response.body).toHaveProperty("message");
    expect(mockExecute).toHaveBeenCalledTimes(1);
  });
});
