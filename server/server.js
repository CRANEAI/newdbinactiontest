/*

   ___ ___    _   _  _ ___     _   ___ 
  / __| _   /_ | | | __|   /_ |_ _|
 | (__|   / / _ | .` | _| _ / _  | | 
  ___|_|_/_/ __|_|___(_)_/ ____|

/*

Server

*/


//----------------------------------------------------------------------------------------------------------
   //Libraries
//----------------------------------------------------------------------------------------------------------

     const express                     = require('express');
     const bodyParser                  = require('body-parser'); 
     const request                     = require('request')
     const swaggerJSDoc                = require('swagger-jsdoc');
     const swaggerUi                   = require('swagger-ui-express');
     const mongoose                    = require('mongoose');
     const os                          = require('os');

//----------------------------------------------------------------------------------------------------------
   //App init & Config
//----------------------------------------------------------------------------------------------------------

      const app                         = express(); 
      const config                      = require('./api/utils/config')(__dirname, app, bodyParser, express, mongoose, os)

//----------------------------------------------------------------------------------------------------------
   //Authentication Strategy
//----------------------------------------------------------------------------------------------------------

//----------------------------------------------------------------------------------------------------------
   //Utilities and helper libs
//----------------------------------------------------------------------------------------------------------

       const Utilities = { 
       }

//----------------------------------------------------------------------------------------------------------
   //Services
//----------------------------------------------------------------------------------------------------------

       const Services = { 
TheaterGroup                 : require(__dirname +'/api/services/TheaterGroup.js'),
ViewAction                 : require(__dirname +'/api/services/ViewAction.js'),
Person                 : require(__dirname +'/api/services/Person.js'),
       }


//----------------------------------------------------------------------------------------------------------
   //API
//----------------------------------------------------------------------------------------------------------

     require( __dirname + '/api/api/v1')(app, Utilities, Services)

//----------------------------------------------------------------------------------------------------------
   //Documentation Gen
//----------------------------------------------------------------------------------------------------------

var swaggerDefinition = {

    info: { // API informations (required)
      title: 'boilerplate', // Title (required)
      version: '1.0.0', // Version (required)
      description: 'boilerplate Core API', // Description (optional)
    },
    basePath: 

  };

  // Additional Options for the swagger docs
  var swaggerOptions = {

    // Import swaggerDefinitions
    swaggerDefinition: swaggerDefinition,
    // Path to the API docs
    apis: [__dirname + '/api/api/v1/index.js']

  };

  // Initialize swagger-jsdoc -> returns validated swagger spec in json format
  var swaggerSpec = swaggerJSDoc(swaggerOptions);


  // Serve swagger docs the way you like (Recommendation: swagger-tools)
  app.get('/api/api-docs.json', function(req, res) {

    res.setHeader('Content-Type', 'application/json');
    res.send(swaggerSpec);

        logger.debug('Creaetd API Spec');

  });

  var showExplorer = true;
  var swaggerUiOptions = {};
  var swagOptions = {
    'scheme-container': '<h1>Hmmm</h1>'
  }
  var customCss = '.swagger-ui .topbar, .info { display: none } ';

  app.use('/api/docs', swaggerUi.serve, swaggerUi.setup(swaggerSpec, showExplorer, swagOptions, customCss));

//----------------------------------------------------------------------------------------------------------
   //Express
//----------------------------------------------------------------------------------------------------------
   app.listen(process.env.PORT || 5000)