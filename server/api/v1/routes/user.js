
            const router = require("express").Router();
            
            console.log("one out")
            /*
            * login function 
            */
            router.post('/login', (req, res) => {
                res.status(200).send({})
            })

            module.exports = router;
            