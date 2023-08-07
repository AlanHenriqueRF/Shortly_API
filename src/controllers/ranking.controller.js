import { db } from "../database/database.connection.js";

export async function rankingget(req,res){
    

    try{
        let arrfinal = []
        const arr =[] 
        const response = (await db.query(`SELECT * FROM useronline;`)).rows

        for (let i=0;i<response.length;i++){
            const name = (await db.query(`SELECT name FROM Usersignup WHERE id = $1`,[response[i].iduser])).rows[0].name;
            const linksCount = (await db.query(`SELECT * FROM shorturl WHERE iduseronline=$1`,[response[i].id])).rowCount;
            const listavisitas = (await db.query(`SELECT "visitCount" FROM shorturl WHERE iduseronline=$1`,[response[i].id])).rows
            let soma = 0
            listavisitas.forEach((i)=>{
                soma += i.visitCount
            })
            
            arrfinal.push({id:response[i].id,name,linksCount,visitCount:soma})
            arr.push(soma)

        }

        arrfinal = arrfinal.sort((a,b)=>{
            return b.visitCount-a.visitCount
        })
        
        

        res.status(200).send(arrfinal.splice(0,10))
    }catch(err){
        res.status(500).send(err.message);
    }
}