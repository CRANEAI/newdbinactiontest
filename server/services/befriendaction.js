/*

   ___ ___    _   _  _ ___     _   ___ 
  / __| _   /_ | | | __|   /_ |_ _|
 | (__|   / / _ | .` | _| _ / _  | | 
  ___|_|_/_/ __|_|___(_)_/ ____|

/*

befriendaction

1530623407737

*/

//----------------------------------------------------------------------------------------------------------
   //Libraries
//----------------------------------------------------------------------------------------------------------

    const db                               = require('../utils/db/db')
//----------------------------------------------------------------------------------------------------------
   //CRUD Routes
//----------------------------------------------------------------------------------------------------------

const __serviceName = befriendaction
/**
 * Retrieves a befriendaction by ID from DB.
 *
 * @param {String} id - The befriendaction id
 * @returns {Object} the befriendaction
 * @throws {Error} Will throw an error if it failed to retrieve a befriendaction from DB.
 * @api public
 */
  exports.findByID = function(req, res)
    {

        db.find(__serviceName, req.body.id , function(befriendactionDAO){ 

    
               if (befriendactionDAO) res.send(befriendactionDAO)
    
                     res.sendStatus(500)
    
      })

    }   
    
    
    
/** 
 * Retrieves list of befriendaction from DB.
 *
 * @returns {Array.<Object>} the array that contains list of befriendaction
 * @throws {Error} Will throw an error if it failed to retrieve a befriendaction from DB.
 * @api public
 */
   exports.find = function(req, res)
    {

      //req.body.id
          db.findMany(__serviceName, {} , function(befriendaction){ 


           res.send(befriendaction)
    
      })


     }
    
    
    
/**
 * Creates a befriendaction document in DB.
 *
 * @param {String} name - The befriendaction name
 * @param {String} [id=uuid] - The befriendaction id
 * @throws {Error} Will throw an error if it failed to create a befriendaction document in DB.
 * @api public
 */
  exports.insert = function(req, res)
    {
       var isValid = validate(req.body);
      if (isValid) {
        db.insert(__serviceName, req.body , function(befriendactionDAO){ 
          res.send(200)
        })
      } else {
        res.error({;'error': isValid})
      }
    }
    
    
    
/**
 * Updates a befriendaction document in DB.
 *
 * @param {String} id - The befriendaction id
 * @throws {Error} Will throw an error if it failed to update a befriendaction document in DB.
 * @api public
 */
  exports.update = function(req, res)
    {
    
        var isValid = validate(req.body);
    
      if (isValid) {
    
        db.update(__serviceName, req.body , function(befriendactionDAO){ 
          res.send(200)
        })
    
      } else {
    
        res.error({'error': isValid})
      }
    
    
   }
    
    
    
    
    
    
/**
 * Removes a befriendaction document from DB.
 *
 * @param {String} id - The befriendaction id
 * @throws {Error} Will throw an error if it failed to remove a befriendaction document from DB.
 * @api public
 */
  exports.remove = function(req, res)
    {
    
        db.remove(__serviceName, req.body.id , function(results){ 
          res.send(200)
        })
    
    }