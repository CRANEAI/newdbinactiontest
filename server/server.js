
            const express = require("express");
            const path = require("path");
            const cors = require("cors");

            const app = express()
            app.use(express.json({
                extended: false
              }))
            
            app.use(cors())
            
            app.use((req, res, next) => {
                res.setHeader("X-Content-Type-Options", "nosniff");
                res.setHeader("X-XSS-Protection", "1");
                res.setHeader("Strict-Transport-Security", "max-age=31536000; includeSubDomains");
                next()
              })
            
            /**
            * Api Directories
            * 
            */
            app.use("/api/v1", require("./api/v1/routes"))

            /**
             * Static file serving directories
             * 
             */
            app.use(express.static(path.join(__dirname, 'public/')));

            /**
             * Launch Server
             * 
             */

            const port = process.env.PORT || 5000;

            app.listen(port, ()=>{
                console.log("listening on port", port)
            })
            