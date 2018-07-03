/*

   ___ ___    _   _  _ ___     _   ___ 
  / __| _   /_ | | | __|   /_ |_ _|
 | (__|   / / _ | .` | _| _ / _  | | 
  ___|_|_/_/ __|_|___(_)_/ ____|

/*

user

1530623407737

*/

//----------------------------------------------------------------------------------------------------------
   //Libraries
//----------------------------------------------------------------------------------------------------------

    const db                               = require('../utils/db/db')
//----------------------------------------------------------------------------------------------------------
   //CRUD Routes
//----------------------------------------------------------------------------------------------------------

const __serviceName = user
/**
 * Retrieves a user by ID from DB.
 *
 * @param {String} id - The user id
 * @returns {Object} the user
 * @throws {Error} Will throw an error if it failed to retrieve a user from DB.
 * @api public
 */
  exports.findByID = function(req, res)
    {

        db.find(__serviceName, req.body.id , function(userDAO){ 

    
               if (userDAO) res.send(userDAO)
    
                     res.sendStatus(500)
    
      })

    }   
    
    
    
/** 
 * Retrieves list of user from DB.
 *
 * @returns {Array.<Object>} the array that contains list of user
 * @throws {Error} Will throw an error if it failed to retrieve a user from DB.
 * @api public
 */
   exports.find = function(req, res)
    {

      //req.body.id
          db.findMany(__serviceName, {} , function(user){ 


           res.send(user)
    
      })


     }
    
    
    
/**
 * Creates a user document in DB.
 *
 * @param {String} name - The user name
 * @param {String} [id=uuid] - The user id
 * @throws {Error} Will throw an error if it failed to create a user document in DB.
 * @api public
 */
  exports.insert = function(req, res)
    {
       var isValid = validate(req.body);
      if (isValid) {
        db.insert(__serviceName, req.body , function(userDAO){ 
          res.send(200)
        })
      } else {
        res.error({;'error': isValid})
      }
    }
    
    
    
/**
 * Updates a user document in DB.
 *
 * @param {String} id - The user id
 * @throws {Error} Will throw an error if it failed to update a user document in DB.
 * @api public
 */
  exports.update = function(req, res)
    {
    
        var isValid = validate(req.body);
    
      if (isValid) {
    
        db.update(__serviceName, req.body , function(userDAO){ 
          res.send(200)
        })
    
      } else {
    
        res.error({'error': isValid})
      }
    
    
   }
    
    
    
    
    
    
/**
 * Removes a user document from DB.
 *
 * @param {String} id - The user id
 * @throws {Error} Will throw an error if it failed to remove a user document from DB.
 * @api public
 */
  exports.remove = function(req, res)
    {
    
        db.remove(__serviceName, req.body.id , function(results){ 
          res.send(200)
        })
    
    }