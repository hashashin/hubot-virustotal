chai = require 'chai'
sinon = require 'sinon'
chai.use require 'sinon-chai'

expect = chai.expect

describe 'virustotal', ->
  beforeEach ->
    @robot =
      respond: sinon.spy()

    require('../src/virustotal')(@robot)

  it 'registers a respond listener', ->
    expect(@robot.respond).to.have.been.calledWith(/vt url\s+(https?:\/\/[^\s]+)$/i)

