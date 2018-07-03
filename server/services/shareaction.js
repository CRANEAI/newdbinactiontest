/*

   ___ ___    _   _  _ ___     _   ___ 
  / __| _   /_ | | | __|   /_ |_ _|
 | (__|   / / _ | .` | _| _ / _  | | 
  ___|_|_/_/ __|_|___(_)_/ ____|

/*

shareaction

1530623407737

*/

//----------------------------------------------------------------------------------------------------------
   //Libraries
//----------------------------------------------------------------------------------------------------------

    const db                               = require('../utils/db/db')
//----------------------------------------------------------------------------------------------------------
   //CRUD Routes
//----------------------------------------------------------------------------------------------------------

const __serviceName = shareaction
/**
 * Retrieves a shareaction by ID from DB.
 *
 * @param {String} id - The shareaction id
 * @returns {Object} the shareaction
 * @throws {Error} Will throw an error if it failed to retrieve a shareaction from DB.
 * @api public
 */
  exports.findByID = function(req, res)
    {

        db.find(__serviceName, req.body.id , function(shareactionDAO){ 

    
               if (shareactionDAO) res.send(shareactionDAO)
    
                     res.sendStatus(500)
    
      })

    }   
    
    
    
/** 
 * Retrieves list of shareaction from DB.
 *
 * @returns {Array.<Object>} the array that contains list of shareaction
 * @throws {Error} Will throw an error if it failed to retrieve a shareaction from DB.
 * @api public
 */
   exports.find = function(req, res)
    {

      //req.body.id
          db.findMany(__serviceName, {} , function(shareaction){ 


           res.send(shareaction)
    
      })


     }
    
    
    
/**
 * Creates a shareaction document in DB.
 *
 * @param {String} name - The shareaction name
 * @param {String} [id=uuid] - The shareaction id
 * @throws {Error} Will throw an error if it failed to create a shareaction document in DB.
 * @api public
 */
  exports.insert = function(req, res)
    {
       var isValid = validate(req.body);
      if (isValid) {
        db.insert(__serviceName, req.body , function(shareactionDAO){ 
          res.send(200)
        })
      } else {
        res.error({;'error': isValid})
      }
    }
    
    
    
/**
 * Updates a shareaction document in DB.
 *
 * @param {String} id - The shareaction id
 * @throws {Error} Will throw an error if it failed to update a shareaction document in DB.
 * @api public
 */
  exports.update = function(req, res)
    {
    
        var isValid = validate(req.body);
    
      if (isValid) {
    
        db.update(__serviceName, req.body , function(shareactionDAO){ 
          res.send(200)
        })
    
      } else {
    
        res.error({'error': isValid})
      }
    
    
   }
    
    
    
    
    
    
/**
 * Removes a shareaction document from DB.
 *
 * @param {String} id - The shareaction id
 * @throws {Error} Will throw an error if it failed to remove a shareaction document from DB.
 * @api public
 */
  exports.remove = function(req, res)
    {
    
        db.remove(__serviceName, req.body.id , function(results){ 
          res.send(200)
        })
    
    }