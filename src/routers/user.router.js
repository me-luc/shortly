import { Router } from "express";
import { getUserInfo, signIn, signUp } from "../controllers/user.controller.js";
import { validateToken } from "../middlewares/auth.middleware.js";
import validateSchema from "../middlewares/schema.middleware.js";
import { signInSchema, signUpSchema } from "../schemas/auth.schema.js";

const userRouter = Router();

userRouter.post("/signin", validateSchema(signInSchema), signIn);
userRouter.post("/signup", validateSchema(signUpSchema), signUp);
userRouter.get("/users/me", validateToken, getUserInfo);

export default userRouter;
