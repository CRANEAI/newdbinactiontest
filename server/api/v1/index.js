/*

   ___ ___    _   _  _ ___     _   ___ 
  / __| _   /_ | | | __|   /_ |_ _|
 | (__|   / / _ | .` | _| _ / _  | | 
  ___|_|_/_/ __|_|___(_)_/ ____|

/*

API

 const __APIPATH__                    = '/api/v1'
*/

//----------------------------------------------------------------------------------------------------------
   //TheaterGroup
//----------------------------------------------------------------------------------------------------------


   /**
 * @swagger
 * /api/v1/TheaterGroup/findByID
 *   post:
 *     tags:
 *       - name: TheaterGroup
 *     description: TheaterGroup
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/TheaterGroup/findByID'          ,  Services.TheaterGroup.findByID)

   /**
 * @swagger
 * /api/v1/TheaterGroup/find
 *   post:
 *     tags:
 *       - name: TheaterGroup
 *     description: TheaterGroup
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/TheaterGroup/find'          ,  Services.TheaterGroup.find)

   /**
 * @swagger
 * /api/v1/TheaterGroup/insert
 *   post:
 *     tags:
 *       - name: TheaterGroup
 *     description: TheaterGroup
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/TheaterGroup/insert'          ,  Services.TheaterGroup.insert)

   /**
 * @swagger
 * /api/v1/TheaterGroup/update
 *   post:
 *     tags:
 *       - name: TheaterGroup
 *     description: TheaterGroup
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/TheaterGroup/update'          ,  Services.TheaterGroup.update)

   /**
 * @swagger
 * /api/v1/TheaterGroup/delete
 *   post:
 *     tags:
 *       - name: TheaterGroup
 *     description: TheaterGroup
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/TheaterGroup/delete'          ,  Services.TheaterGroup.delete)
//----------------------------------------------------------------------------------------------------------
   //ViewAction
//----------------------------------------------------------------------------------------------------------


   /**
 * @swagger
 * /api/v1/ViewAction/findByID
 *   post:
 *     tags:
 *       - name: ViewAction
 *     description: ViewAction
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/ViewAction/findByID'          ,  Services.ViewAction.findByID)

   /**
 * @swagger
 * /api/v1/ViewAction/find
 *   post:
 *     tags:
 *       - name: ViewAction
 *     description: ViewAction
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/ViewAction/find'          ,  Services.ViewAction.find)

   /**
 * @swagger
 * /api/v1/ViewAction/insert
 *   post:
 *     tags:
 *       - name: ViewAction
 *     description: ViewAction
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/ViewAction/insert'          ,  Services.ViewAction.insert)

   /**
 * @swagger
 * /api/v1/ViewAction/update
 *   post:
 *     tags:
 *       - name: ViewAction
 *     description: ViewAction
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/ViewAction/update'          ,  Services.ViewAction.update)

   /**
 * @swagger
 * /api/v1/ViewAction/delete
 *   post:
 *     tags:
 *       - name: ViewAction
 *     description: ViewAction
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/ViewAction/delete'          ,  Services.ViewAction.delete)
//----------------------------------------------------------------------------------------------------------
   //Person
//----------------------------------------------------------------------------------------------------------


   /**
 * @swagger
 * /api/v1/Person/findByID
 *   post:
 *     tags:
 *       - name: Person
 *     description: Person
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/Person/findByID'          ,  Services.Person.findByID)

   /**
 * @swagger
 * /api/v1/Person/find
 *   post:
 *     tags:
 *       - name: Person
 *     description: Person
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/Person/find'          ,  Services.Person.find)

   /**
 * @swagger
 * /api/v1/Person/insert
 *   post:
 *     tags:
 *       - name: Person
 *     description: Person
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/Person/insert'          ,  Services.Person.insert)

   /**
 * @swagger
 * /api/v1/Person/update
 *   post:
 *     tags:
 *       - name: Person
 *     description: Person
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/Person/update'          ,  Services.Person.update)

   /**
 * @swagger
 * /api/v1/Person/delete
 *   post:
 *     tags:
 *       - name: Person
 *     description: Person
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/Person/delete'          ,  Services.Person.delete)