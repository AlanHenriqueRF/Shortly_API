import { Router } from "express"
import signupRouter from "./signup.routes.js"
import signinrouter from "./signin.routes.js"
import urlRoute from "./urls.routes.js"
import userRouter from "./user.routes.js"
import rankingRouter from "./ranking.routes.js"

const router = Router();
router.use(signupRouter);
router.use(signinrouter);
router.use(urlRoute);
router.use(userRouter);
router.use(rankingRouter)

export default router;