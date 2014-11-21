express = require 'express'
http = require 'http'
mongoose = require 'mongoose'
path = require 'path'
db = require './config/db'
app = express()
require('./config/express') app
require('./config/routes') app

app.on 'close', (err)->
  db.disconnect()

http.createServer app
.listen app.get 'port', ()->
  console.log 'soBlog is listening on port ' + app.get 'port'

module.exports = app


