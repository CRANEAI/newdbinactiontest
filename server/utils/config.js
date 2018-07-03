    module.exports = function(__server, app, bodyParser, express, mongoose, os) {

    var config = Object.freeze({


      path: __server



    }

        app.use(bodyParser.urlencoded({extended: true}));
        app.use(bodyParser.json());
    }

return config;