// Load required packages
var mongoose = require('mongoose');
// Define our ViewAction schema

var Schema = new mongoose.Schema({
     _id      :{ type: String }, 
     createdAt      :{ type: Date }, 
     updatedAt      :{ type: Date }, 
     description      :{ type: String }, 
     image      :{ type: String }, 
     name      :{ type: String }, 
     url      :{ type: String }, 
     agent      :{ type: Object }, 
     endTime      :{ type: Timestamp }, 
     instrument      :{ type: String }, 
     location      :{ type: Object }, 
     object      :{ type: String }, 
     participant      :{ type: Object }, 
     result      :{ type: Object }, 
     startTime      :{ type: Timestamp }, 
});

// Export the Mongoose model
module.exports = mongoose.model('ViewAction', Schema);