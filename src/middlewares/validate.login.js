import { db } from "../database/database.connection.js";
import bcrypt from "bcrypt"

export default async function validateLogin(req,res,next){
    const {email, password} = req.body;

    const response =  await db.query(`SELECT * FROM UserSignup WHERE email = $1`,[email])
   

    if (response.rowCount === 0 || !(bcrypt.compareSync(password, response.rows[0].password))) return res.sendStatus(401)

    next();
}


//bcrypt.compareSync('outro valor', senhaCriptografada);