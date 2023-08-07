import { db } from "../database/database.connection.js";
import { nanoid } from "nanoid";

export async function urlsShorthen(req,res){
    const {url} = req.body;
    const token = res.locals.token
    const shortUrl = nanoid(6);

    try{
        const iduseronline = (await db.query(`SELECT id FROM useronline WHERE token=$1;`,[token])).rows[0].id
        

        await db.query(`INSERT INTO shorturl (iduseronline,shorturl,url,visitcount) VALUES ($1,$2,$3,$4)`,[iduseronline,shortUrl,url,0])
        const response = (await db.query(`SELECT * from shorturl WHERE shorturl=$1`,[shortUrl])).rows[0]

        res.status(201).send({id:response.id,shortUrl:response.shorturl})
    }catch(err){
        res.status(500).send(err.message);
    }
}


export async function urlsbyid(req,res){
    const {id} = req.params

    try{
        const response = await db.query(`SELECT id,shorturl,url FROM shorturl WHERE id=$1`,[id])
        if (response.rowCount === 0) return res.sendStatus(404)
        res.send(response.rows[0])
    }catch(err){
        res.status(500).send(err.message)
    }
}