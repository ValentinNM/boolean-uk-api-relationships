const { json } = require("stream/consumers");
const { prisma } = require("../../utils/database");
const { param } = require("./router");

async function getAllUsers(req, res) { 

    try { 
        const allUsers = await prisma.user.findMany({
            
        })
        res.json({allUsers: allUsers})
    } catch(error) { 

        res.status(500),json({error: error.message})
    }
}

module.exports = { getAllUsers}