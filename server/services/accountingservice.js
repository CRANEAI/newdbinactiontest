/*

   ___ ___    _   _  _ ___     _   ___ 
  / __| _   /_ | | | __|   /_ |_ _|
 | (__|   / / _ | .` | _| _ / _  | | 
  ___|_|_/_/ __|_|___(_)_/ ____|

/*

accountingservice

1530623407737

*/

//----------------------------------------------------------------------------------------------------------
   //Libraries
//----------------------------------------------------------------------------------------------------------

    const db                               = require('../utils/db/db')
//----------------------------------------------------------------------------------------------------------
   //CRUD Routes
//----------------------------------------------------------------------------------------------------------

const __serviceName = accountingservice
/**
 * Retrieves a accountingservice by ID from DB.
 *
 * @param {String} id - The accountingservice id
 * @returns {Object} the accountingservice
 * @throws {Error} Will throw an error if it failed to retrieve a accountingservice from DB.
 * @api public
 */
  exports.findByID = function(req, res)
    {

        db.find(__serviceName, req.body.id , function(accountingserviceDAO){ 

    
               if (accountingserviceDAO) res.send(accountingserviceDAO)
    
                     res.sendStatus(500)
    
      })

    }   
    
    
    
/** 
 * Retrieves list of accountingservice from DB.
 *
 * @returns {Array.<Object>} the array that contains list of accountingservice
 * @throws {Error} Will throw an error if it failed to retrieve a accountingservice from DB.
 * @api public
 */
   exports.find = function(req, res)
    {

      //req.body.id
          db.findMany(__serviceName, {} , function(accountingservice){ 


           res.send(accountingservice)
    
      })


     }
    
    
    
/**
 * Creates a accountingservice document in DB.
 *
 * @param {String} name - The accountingservice name
 * @param {String} [id=uuid] - The accountingservice id
 * @throws {Error} Will throw an error if it failed to create a accountingservice document in DB.
 * @api public
 */
  exports.insert = function(req, res)
    {
       var isValid = validate(req.body);
      if (isValid) {
        db.insert(__serviceName, req.body , function(accountingserviceDAO){ 
          res.send(200)
        })
      } else {
        res.error({;'error': isValid})
      }
    }
    
    
    
/**
 * Updates a accountingservice document in DB.
 *
 * @param {String} id - The accountingservice id
 * @throws {Error} Will throw an error if it failed to update a accountingservice document in DB.
 * @api public
 */
  exports.update = function(req, res)
    {
    
        var isValid = validate(req.body);
    
      if (isValid) {
    
        db.update(__serviceName, req.body , function(accountingserviceDAO){ 
          res.send(200)
        })
    
      } else {
    
        res.error({'error': isValid})
      }
    
    
   }
    
    
    
    
    
    
/**
 * Removes a accountingservice document from DB.
 *
 * @param {String} id - The accountingservice id
 * @throws {Error} Will throw an error if it failed to remove a accountingservice document from DB.
 * @api public
 */
  exports.remove = function(req, res)
    {
    
        db.remove(__serviceName, req.body.id , function(results){ 
          res.send(200)
        })
    
    }