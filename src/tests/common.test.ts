import request from "supertest";
import app from "../app"; // Import your Express app
import { StatusCodes } from "http-status-codes";

describe("Common API Tests", () => {
  it("should retrieve students for a teacher", async () => {
    const response = await request(app)
      .get("/api/commonstudents")
      .query({ teacher: "teacherken@gmail.com" });
    expect(response.status).toBe(StatusCodes.OK);
    expect(response.body).toHaveProperty("students");
    expect(response.body.students).toBeInstanceOf(Array);
  });
  it("should retrieve common students of multiple teachers", async () => {
    const response = await request(app)
      .get("/api/commonstudents")
      .query({ teacher: ["teacherken@gmail.com", "teacherbarbie@gmail.com","teacherjoe@gmail.com"] });

      expect(response.status).toBe(StatusCodes.OK);
    expect(response.body).toHaveProperty("students");
    expect(response.body.students).toBeInstanceOf(Array);
  });

  it("should return an error for invalid input", async () => {
    const response = await request(app)
      .get("/api/commonstudents")
      .query({ teacher: "teacherbarbie" });

    expect(response.status).toBe(StatusCodes.BAD_REQUEST);
    expect(response.body).toHaveProperty("message");
  });
});
