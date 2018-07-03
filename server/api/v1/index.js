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
   //ShareAction
//----------------------------------------------------------------------------------------------------------


   /**
 * @swagger
 * /api/v1/ShareAction/findByID
 *   post:
 *     tags:
 *       - name: ShareAction
 *     description: ShareAction
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/ShareAction/findByID'          ,  Services.ShareAction.findByID)

   /**
 * @swagger
 * /api/v1/ShareAction/find
 *   post:
 *     tags:
 *       - name: ShareAction
 *     description: ShareAction
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/ShareAction/find'          ,  Services.ShareAction.find)

   /**
 * @swagger
 * /api/v1/ShareAction/insert
 *   post:
 *     tags:
 *       - name: ShareAction
 *     description: ShareAction
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/ShareAction/insert'          ,  Services.ShareAction.insert)

   /**
 * @swagger
 * /api/v1/ShareAction/update
 *   post:
 *     tags:
 *       - name: ShareAction
 *     description: ShareAction
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/ShareAction/update'          ,  Services.ShareAction.update)

   /**
 * @swagger
 * /api/v1/ShareAction/delete
 *   post:
 *     tags:
 *       - name: ShareAction
 *     description: ShareAction
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/ShareAction/delete'          ,  Services.ShareAction.delete)
//----------------------------------------------------------------------------------------------------------
   //LikeAction
//----------------------------------------------------------------------------------------------------------


   /**
 * @swagger
 * /api/v1/LikeAction/findByID
 *   post:
 *     tags:
 *       - name: LikeAction
 *     description: LikeAction
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/LikeAction/findByID'          ,  Services.LikeAction.findByID)

   /**
 * @swagger
 * /api/v1/LikeAction/find
 *   post:
 *     tags:
 *       - name: LikeAction
 *     description: LikeAction
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/LikeAction/find'          ,  Services.LikeAction.find)

   /**
 * @swagger
 * /api/v1/LikeAction/insert
 *   post:
 *     tags:
 *       - name: LikeAction
 *     description: LikeAction
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/LikeAction/insert'          ,  Services.LikeAction.insert)

   /**
 * @swagger
 * /api/v1/LikeAction/update
 *   post:
 *     tags:
 *       - name: LikeAction
 *     description: LikeAction
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/LikeAction/update'          ,  Services.LikeAction.update)

   /**
 * @swagger
 * /api/v1/LikeAction/delete
 *   post:
 *     tags:
 *       - name: LikeAction
 *     description: LikeAction
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/LikeAction/delete'          ,  Services.LikeAction.delete)
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
//----------------------------------------------------------------------------------------------------------
   //BefriendAction
//----------------------------------------------------------------------------------------------------------


   /**
 * @swagger
 * /api/v1/BefriendAction/findByID
 *   post:
 *     tags:
 *       - name: BefriendAction
 *     description: BefriendAction
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/BefriendAction/findByID'          ,  Services.BefriendAction.findByID)

   /**
 * @swagger
 * /api/v1/BefriendAction/find
 *   post:
 *     tags:
 *       - name: BefriendAction
 *     description: BefriendAction
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/BefriendAction/find'          ,  Services.BefriendAction.find)

   /**
 * @swagger
 * /api/v1/BefriendAction/insert
 *   post:
 *     tags:
 *       - name: BefriendAction
 *     description: BefriendAction
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/BefriendAction/insert'          ,  Services.BefriendAction.insert)

   /**
 * @swagger
 * /api/v1/BefriendAction/update
 *   post:
 *     tags:
 *       - name: BefriendAction
 *     description: BefriendAction
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/BefriendAction/update'          ,  Services.BefriendAction.update)

   /**
 * @swagger
 * /api/v1/BefriendAction/delete
 *   post:
 *     tags:
 *       - name: BefriendAction
 *     description: BefriendAction
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: API v1
 */
app.get( __APIPATH__ + '/BefriendAction/delete'          ,  Services.BefriendAction.delete)