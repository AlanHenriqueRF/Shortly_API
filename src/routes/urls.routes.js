import { Router } from "express";
import validateSchema from "../middlewares/validateSchema.js";
import { urlsShema } from "../schemas/urlShorthen.shema.js";
import { urlsShorthen } from "../controllers/urls.controller.js";
import { autorization } from "../middlewares/authorization.js";

const urlRoute = Router();

urlRoute.post('/urls/shorten',autorization,validateSchema(urlsShema),urlsShorthen)

export default urlRoute;