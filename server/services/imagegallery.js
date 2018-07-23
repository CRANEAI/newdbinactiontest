/*

   ___ ___    _   _  _ ___     _   ___ 
  / __| _   /_ | | | __|   /_ |_ _|
 | (__|   / / _ | .` | _| _ / _  | | 
  ___|_|_/_/ __|_|___(_)_/ ____|

/*

imagegallery

1530623407737

*/

//----------------------------------------------------------------------------------------------------------
   //Libraries
//----------------------------------------------------------------------------------------------------------

    const db                               = require('../utils/db/db')
//----------------------------------------------------------------------------------------------------------
   //CRUD Routes
//----------------------------------------------------------------------------------------------------------

const __serviceName = imagegallery
/**
 * Retrieves a imagegallery by ID from DB.
 *
 * @param {String} id - The imagegallery id
 * @returns {Object} the imagegallery
 * @throws {Error} Will throw an error if it failed to retrieve a imagegallery from DB.
 * @api public
 */
  exports.findByID = function(req, res)
    {

        db.find(__serviceName, req.body.id , function(imagegalleryDAO){ 

    
               if (imagegalleryDAO) res.send(imagegalleryDAO)
    
                     res.sendStatus(500)
    
      })

    }   
    
    
    
/** 
 * Retrieves list of imagegallery from DB.
 *
 * @returns {Array.<Object>} the array that contains list of imagegallery
 * @throws {Error} Will throw an error if it failed to retrieve a imagegallery from DB.
 * @api public
 */
   exports.find = function(req, res)
    {

      //req.body.id
          db.findMany(__serviceName, {} , function(imagegallery){ 


           res.send(imagegallery)
    
      })


     }
    
    
    
/**
 * Creates a imagegallery document in DB.
 *
 * @param {String} name - The imagegallery name
 * @param {String} [id=uuid] - The imagegallery id
 * @throws {Error} Will throw an error if it failed to create a imagegallery document in DB.
 * @api public
 */
  exports.insert = function(req, res)
    {
       var isValid = validate(req.body);
      if (isValid) {
        db.insert(__serviceName, req.body , function(imagegalleryDAO){ 
          res.send(200)
        })
      } else {
        res.error({;'error': isValid})
      }
    }
    
    
    
/**
 * Updates a imagegallery document in DB.
 *
 * @param {String} id - The imagegallery id
 * @throws {Error} Will throw an error if it failed to update a imagegallery document in DB.
 * @api public
 */
  exports.update = function(req, res)
    {
    
        var isValid = validate(req.body);
    
      if (isValid) {
    
        db.update(__serviceName, req.body , function(imagegalleryDAO){ 
          res.send(200)
        })
    
      } else {
    
        res.error({'error': isValid})
      }
    
    
   }
    
    
    
    
    
    
/**
 * Removes a imagegallery document from DB.
 *
 * @param {String} id - The imagegallery id
 * @throws {Error} Will throw an error if it failed to remove a imagegallery document from DB.
 * @api public
 */
  exports.remove = function(req, res)
    {
    
        db.remove(__serviceName, req.body.id , function(results){ 
          res.send(200)
        })
    
    }