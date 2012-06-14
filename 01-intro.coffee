###
Welcome to Coffeescript. Below is a (small) example of what some coffeescript
code may look like. Use the 'coffee -p [filename]' command in terminal to see how it
will look once it is compiled into javascript. One of the nice things about coffeescript
is that the compiled code is still readable!
###

class Intro
    constructor: (@name) ->
        @counter = 0
    
    incrementCounter: () -> @counter++
    
    nameAsArray: () ->
        result = i for i in @name
    
    attachClickListener: () ->
        $('#button').click(() =>
            @incrementCounter()
        )
    
    isCounterEqualTo2: () ->
        @counter == 2