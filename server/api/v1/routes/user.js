
            const router = require("express").Router();
            
            console.log("one 34")
            /*
            * login function 
            */
            router.post('/login', (req, res) => {
                res.status(200).send({})
            })

            module.exports = router;
            