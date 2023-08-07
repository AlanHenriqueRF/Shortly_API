import { Router } from "express";
import { autorization } from "../middlewares/authorization.js";
import { getMe } from "../controllers/user.controller.js";

const userRouter =Router();

userRouter.get('/users/me',autorization,getMe)

export default userRouter;