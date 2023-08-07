import { Router } from "express"
import signupRouter from "./signup.routes.js"
import signinrouter from "./signin.routes.js"

const router = Router()
router.use(signupRouter)
router.use(signinrouter)

export default router