import { db } from "../database/database.connection.js";

export async function autorization(req, res, next) {
    const authorization = req.headers.authorization;
    const token = authorization?.replace("Bearer ", "");
  
    if (!token || ((await db.query(`SELECT * FROM useronline WHERE token=$1`,[token])).rowCount)===0 ) {
        return res.sendStatus(401);
    }

    res.locals.token =token
    next();
  }