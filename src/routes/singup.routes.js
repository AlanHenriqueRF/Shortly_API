import { Router } from "express"
import validateSchema from "../middlewares/validateSchema.js"
import { signupSchema } from "../schemas/cadastro.schema.js"
import { signup } from "../controllers/singup.controller.js"


const signupRouter = Router()

signupRouter.post("/signup",validateSchema(signupSchema),signup )

export default signupRouter