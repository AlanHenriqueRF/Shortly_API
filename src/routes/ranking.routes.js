import { Router } from "express";
import { rankingget } from "../controllers/ranking.controller.js";

const rankingRouter = Router();

rankingRouter.get('/ranking',rankingget)

export default rankingRouter