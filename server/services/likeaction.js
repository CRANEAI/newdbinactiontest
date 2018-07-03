/*

   ___ ___    _   _  _ ___     _   ___ 
  / __| _   /_ | | | __|   /_ |_ _|
 | (__|   / / _ | .` | _| _ / _  | | 
  ___|_|_/_/ __|_|___(_)_/ ____|

/*

likeaction

1530623407737

*/

//----------------------------------------------------------------------------------------------------------
   //Libraries
//----------------------------------------------------------------------------------------------------------

    const db                               = require('../utils/db/db')
//----------------------------------------------------------------------------------------------------------
   //CRUD Routes
//----------------------------------------------------------------------------------------------------------

const __serviceName = likeaction
/**
 * Retrieves a likeaction by ID from DB.
 *
 * @param {String} id - The likeaction id
 * @returns {Object} the likeaction
 * @throws {Error} Will throw an error if it failed to retrieve a likeaction from DB.
 * @api public
 */
  exports.findByID = function(req, res)
    {

        db.find(__serviceName, req.body.id , function(likeactionDAO){ 

    
               if (likeactionDAO) res.send(likeactionDAO)
    
                     res.sendStatus(500)
    
      })

    }   
    
    
    
/** 
 * Retrieves list of likeaction from DB.
 *
 * @returns {Array.<Object>} the array that contains list of likeaction
 * @throws {Error} Will throw an error if it failed to retrieve a likeaction from DB.
 * @api public
 */
   exports.find = function(req, res)
    {

      //req.body.id
          db.findMany(__serviceName, {} , function(likeaction){ 


           res.send(likeaction)
    
      })


     }
    
    
    
/**
 * Creates a likeaction document in DB.
 *
 * @param {String} name - The likeaction name
 * @param {String} [id=uuid] - The likeaction id
 * @throws {Error} Will throw an error if it failed to create a likeaction document in DB.
 * @api public
 */
  exports.insert = function(req, res)
    {
       var isValid = validate(req.body);
      if (isValid) {
        db.insert(__serviceName, req.body , function(likeactionDAO){ 
          res.send(200)
        })
      } else {
        res.error({;'error': isValid})
      }
    }
    
    
    
/**
 * Updates a likeaction document in DB.
 *
 * @param {String} id - The likeaction id
 * @throws {Error} Will throw an error if it failed to update a likeaction document in DB.
 * @api public
 */
  exports.update = function(req, res)
    {
    
        var isValid = validate(req.body);
    
      if (isValid) {
    
        db.update(__serviceName, req.body , function(likeactionDAO){ 
          res.send(200)
        })
    
      } else {
    
        res.error({'error': isValid})
      }
    
    
   }
    
    
    
    
    
    
/**
 * Removes a likeaction document from DB.
 *
 * @param {String} id - The likeaction id
 * @throws {Error} Will throw an error if it failed to remove a likeaction document from DB.
 * @api public
 */
  exports.remove = function(req, res)
    {
    
        db.remove(__serviceName, req.body.id , function(results){ 
          res.send(200)
        })
    
    }