mongoose = require('mongoose')

import logger from '../log'

problemsSchema = new mongoose.Schema
    _id: String
    name: String
    text: String
    contests: [{name: String, _id: String}]
    testSystemData: mongoose.Schema.Types.Mixed
    order: Number

problemsSchema.methods.upsert = () ->
    # https://jira.mongodb.org/browse/SERVER-14322
    try
        @update(this, {upsert: true})
    catch
        logger.info "Could not upsert a problemsSchema"

problemsSchema.statics.findByLevel = (level) ->
    return Problem.find
        level: level

Problem = mongoose.model('Problems', problemsSchema);

export default Problem
