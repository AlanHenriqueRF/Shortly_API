import { Router } from "express"
import signupRouter from "./signup.routes.js"
import signinrouter from "./signin.routes.js"
import urlRoute from "./urls.routes.js"

const router = Router()
router.use(signupRouter)
router.use(signinrouter);
router.use(urlRoute);

export default router