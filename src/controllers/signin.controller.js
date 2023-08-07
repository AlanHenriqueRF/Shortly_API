import { db } from "../database/database.connection.js";
import { v4 as uuid } from 'uuid';

export async function signin(req, res) {
    const {email, password} = req.body;

    try {
        const iduser = ((await db.query(`SELECT * FROM UserSignup WHERE email=$1`,[email])).rows)[0].id;
        const token = uuid();
        await db.query(`
            INSERT INTO useronline ( iduser,token )
                VALUES ($1, $2);
        `, [iduser,token])
        
        res.status(200).send({token})
    } catch (err) {
        res.status(500).send(err.message)
    }
}
