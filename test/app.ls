require! <[assert colors]>
require! \../src/app.ls

module.exports = new class AppTest
  ->
    @run!
  run: ->
    console.log "Checking module."
    assert.ok app
    console.log "Testing add method."
    assert.equal app.add(1, 1), 2
    assert.not-equal app.add(1, 1), 1
    console.log "`add` method ok.".green

