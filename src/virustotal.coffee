# Description
#   A hubot script that does the things
#
# Configuration:
#   HUBOT_VT_APIKEY
#
# Commands:
#   hubot vt url <url> - Check url against virustotal api
#
# Author:
#   hashashin
TinyURL = require('tinyurl')
virustotal = require('virustotal.js')
virustotal.setKey process.env.HUBOT_VT_APIKEY

module.exports = (robot) ->
  robot.respond /vt url\s+(https?:\/\/[^\s]+)$/i, (msg) ->
    msg.send "Waiting virustotal response"
    virustotal.getUrlReport msg.match[1], (err, res) ->
      if err
        robot.logger.error err
        return
      else if res.positives > 1
        TinyURL.shorten res.permalink, (turl) ->
          url = turl
          msg.send "VT positives for #{res.url}: #{res.positives}\n#{url}"
      else
        msg.send "VT all good, no positives"
