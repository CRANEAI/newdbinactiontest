// Load required packages
var mongoose = require('mongoose');
// Define our LikeAction schema

var Schema = new mongoose.Schema({
     _id      :{ type: String }, 
     createdAt      :{ type: Date }, 
     updatedAt      :{ type: Date }, 
     startTime      :{ type: Timestamp }, 
     result      :{ type: Object }, 
     participant      :{ type: Object }, 
     object      :{ type: String }, 
     location      :{ type: Object }, 
     instrument      :{ type: String }, 
     endTime      :{ type: Timestamp }, 
     agent      :{ type: Object }, 
     url      :{ type: String }, 
     name      :{ type: String }, 
     image      :{ type: String }, 
     description      :{ type: String }, 
});

// Export the Mongoose model
module.exports = mongoose.model('LikeAction', Schema);