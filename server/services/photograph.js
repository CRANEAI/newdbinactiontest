/*

   ___ ___    _   _  _ ___     _   ___ 
  / __| _   /_ | | | __|   /_ |_ _|
 | (__|   / / _ | .` | _| _ / _  | | 
  ___|_|_/_/ __|_|___(_)_/ ____|

/*

photograph

1530623407737

*/

//----------------------------------------------------------------------------------------------------------
   //Libraries
//----------------------------------------------------------------------------------------------------------

    const db                               = require('../utils/db/db')
//----------------------------------------------------------------------------------------------------------
   //CRUD Routes
//----------------------------------------------------------------------------------------------------------

const __serviceName = photograph
/**
 * Retrieves a photograph by ID from DB.
 *
 * @param {String} id - The photograph id
 * @returns {Object} the photograph
 * @throws {Error} Will throw an error if it failed to retrieve a photograph from DB.
 * @api public
 */
  exports.findByID = function(req, res)
    {

        db.find(__serviceName, req.body.id , function(photographDAO){ 

    
               if (photographDAO) res.send(photographDAO)
    
                     res.sendStatus(500)
    
      })

    }   
    
    
    
/** 
 * Retrieves list of photograph from DB.
 *
 * @returns {Array.<Object>} the array that contains list of photograph
 * @throws {Error} Will throw an error if it failed to retrieve a photograph from DB.
 * @api public
 */
   exports.find = function(req, res)
    {

      //req.body.id
          db.findMany(__serviceName, {} , function(photograph){ 


           res.send(photograph)
    
      })


     }
    
    
    
/**
 * Creates a photograph document in DB.
 *
 * @param {String} name - The photograph name
 * @param {String} [id=uuid] - The photograph id
 * @throws {Error} Will throw an error if it failed to create a photograph document in DB.
 * @api public
 */
  exports.insert = function(req, res)
    {
       var isValid = validate(req.body);
      if (isValid) {
        db.insert(__serviceName, req.body , function(photographDAO){ 
          res.send(200)
        })
      } else {
        res.error({;'error': isValid})
      }
    }
    
    
    
/**
 * Updates a photograph document in DB.
 *
 * @param {String} id - The photograph id
 * @throws {Error} Will throw an error if it failed to update a photograph document in DB.
 * @api public
 */
  exports.update = function(req, res)
    {
    
        var isValid = validate(req.body);
    
      if (isValid) {
    
        db.update(__serviceName, req.body , function(photographDAO){ 
          res.send(200)
        })
    
      } else {
    
        res.error({'error': isValid})
      }
    
    
   }
    
    
    
    
    
    
/**
 * Removes a photograph document from DB.
 *
 * @param {String} id - The photograph id
 * @throws {Error} Will throw an error if it failed to remove a photograph document from DB.
 * @api public
 */
  exports.remove = function(req, res)
    {
    
        db.remove(__serviceName, req.body.id , function(results){ 
          res.send(200)
        })
    
    }