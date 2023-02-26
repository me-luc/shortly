import { Router } from "express";
import { signIn, signUp } from "../controllers/user.controller.js";
import validateSchema from "../middlewares/schema.middleware.js";
import { signInSchema, signUpSchema } from "../schemas/auth.schema.js";

const userRouter = Router();

userRouter.get("/sign-in", validateSchema(signInSchema), signIn);
userRouter.post("/sign-up", validateSchema(signUpSchema), signUp);

export default userRouter;
