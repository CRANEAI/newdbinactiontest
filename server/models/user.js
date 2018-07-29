
            const mongoose = require('mongoose');
            
            var Schema = new mongoose.Schema({
                _id    :  {type: String },username    :  {type: String },password    :  {type: String },email    :  {type: String }
            })

            module.exports = mongoose.model('user', Schema);
            