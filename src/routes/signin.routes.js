import { Router } from "express";
import validateSchema from "../middlewares/validateSchema.js";
import { signin } from "../controllers/signin.controller.js";
import { signinSchema } from "../schemas/login.schema.js";
import validateLogin from "../middlewares/validate.login.js";

const signinrouter = Router();

signinrouter.post('/signin',validateSchema(signinSchema),validateLogin,signin)

export default signinrouter;