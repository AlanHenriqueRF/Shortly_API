import { Router } from "express"
import signupRouter from "./singup.routes.js"

const router = Router()
router.use(signupRouter)

export default router