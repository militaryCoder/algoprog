mongoose = require('mongoose')

contestResultsSchema = new mongoose.Schema
    _id: String
    user: String
    contest: String
    contestResult: mongoose.Schema.Types.Mixed
    problemResults: mongoose.Schema.Types.Mixed
    registered: { type: Boolean, default: false }
    startTime: Date

contestResultsSchema.methods.upsert = () ->
    @_id = @user + "::" + @contest
    try
        @update(this, {upsert: true})
    catch
        logger.info "Could not upsert a problemsSchema"

contestResultsSchema.statics.findByContestAndUser = (contest, user) ->
    id = user + "::" + contest
    return ContestResult.findById id

export default ContestResult = mongoose.model('ContestResults', contestResultsSchema);
