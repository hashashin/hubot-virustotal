# Description
#   A hubot script that does the things
#
# Configuration:
#   HUBOT_VT_APIKEY
#
# Commands:
#   hubot hello - <what the respond trigger does>
#
# Author:
#   hashashin

vt = require('node-virustotal')
con = vt.MakePublicConnection()
con.setKey process.env.HUBOT_VT_APIKEY

module.exports = (robot) ->
  robot.respond /vt url\s+(https?:\/\/[^\s]+)$/i, (msg) ->
    msg.reply "Waiting virustotal response"
    con.UrlEvaluation msg.match[1], ((data) ->
      msg.reply "Positives: #{data.positives}"
    ), (err) ->
      robot.logger.error err
