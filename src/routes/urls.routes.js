import { Router } from "express";
import validateSchema from "../middlewares/validateSchema.js";
import { urlsShema } from "../schemas/urlShorthen.shema.js";
import { openShort, urlsShorthen, urlsbyid } from "../controllers/urls.controller.js";
import { autorization } from "../middlewares/authorization.js";

const urlRoute = Router();

urlRoute.post('/urls/shorten',autorization,validateSchema(urlsShema),urlsShorthen)
urlRoute.get('/urls/:id',urlsbyid)
urlRoute.get('/urls/open/:shortUrl',openShort)

export default urlRoute;