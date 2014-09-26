transpile = require('wisp/compiler').compile


module.exports = class WispCompiler
  brunchPlugin: yes
  type: 'javascript'
  extension: 'wisp'

  constructor: (@config) ->
    return

  compile: (data, path, callback) ->
    try
      return result = transpile data
    catch err
      error = err
    finally
      callback error, result
