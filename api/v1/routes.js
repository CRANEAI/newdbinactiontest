
const router = require("express").Router();

router.use("/user/login",                require("./routes/user"));

module.exports = router;
            