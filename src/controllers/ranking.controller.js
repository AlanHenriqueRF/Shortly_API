import { db } from "../database/database.connection.js";

export async function rankingget(req,res){

    try{
        res.status(200).send((await db.query(`SELECT * FROM shorturl ORDER BY "visitCount" DESC LIMIT 10;`)).rows)
    }catch(err){
        res.status(500).send(err.message);
    }
}