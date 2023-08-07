import { db } from "../database/database.connection.js"
import bcrypt from 'bcrypt';

export async function signup(req, res) {
    const {name, email, password,confirmPassword} = req.body;

    if (password != confirmPassword) return res.sendStatus(422)

    try {
        const searchEmail = (await db.query(`SELECT * FROM UserSignup WHERE email = ($1);`,[email])).rows
        if (searchEmail.length > 0) return res.sendStatus(409);

        await db.query(`
            INSERT INTO UserSignup (name, email, password)
                VALUES ($1, $2, $3);
        `, [name, email,bcrypt.hashSync(password, 10)])
        
        res.sendStatus(201)
    } catch (err) {
        res.status(500).send(err.message)
    }
}