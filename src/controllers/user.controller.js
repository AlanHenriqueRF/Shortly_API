import { db } from "../database/database.connection.js";


export async function getMe(req,res){
    const token = res.locals.token
    const object  ={};

    try{
        const response = (await db.query(`
        SELECT * FROM useronline WHERE token=$1;`,[token])).rows[0]

        object.id = response.id
        object.name = (await db.query(`SELECT name FROM Usersignup WHERE id = $1`,[response.iduser])).rows[0].name
        const listavisitas = (await db.query(`SELECT "visitCount" FROM shorturl WHERE iduseronline=$1`,[response.id])).rows
        let soma = 0
        listavisitas.forEach((i)=>{
            soma += i.visitCount
        })
        object.visitCount = soma

        object.shortenedUrls = (await db.query(`SELECT id,"shortUrl", url, "visitCount" FROM shorturl WHERE iduseronline=$1`,[response.id])).rows

        res.status(200).send(object)

    }catch(err){
        res.status(500).send(err.message);
    }
}