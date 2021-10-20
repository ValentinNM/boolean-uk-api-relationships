const express = require("express")

const { getAllUsers } = require("./controller")

const router = express.Router();

router.get('/', getAllUsers)

module.exports = router;