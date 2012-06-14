# functions are much more concise than in javascript
myFunction = () ->
    console.log('hello')

# in fact, for the above function you can drop the brackets and the indent:
myFunction = -> console.log 'hi'

# arguments go in the brackets:
printName = (first, last) ->
    console.log('name is: ' + first + ' ' + last)

# you can have varargs - in coffeescript they are called splats:
debug = (message, args...) ->
    console.log(message, arg) for arg in args
    
# you can call functions without the brackets:
debug 'my message', 42, {key: 'value'}

# ...but only if the function has arguments. no args functions still need the brackets:
myFunction()

# you can preserve the value of 'this' in a function by using the fat arrow
# incredibly useful for things like jQuery event handlers. 
# the @ symbol is an alias for 'this'

myObj = {
    alert: (text) ->
        console.log(text)
        
    onClick: (event) ->
        @alert(event.name)
        
    attach: () ->
        $('.button').click((e) ->
            # in this function, the value of 'this' is the same as
            # the value of 'this' outside the function. This allows
            # us to call the function defined on our calling object
            # inside the closure. Normally, jQuery will change the 
            # value of 'this' to the DOM element for an event handler. 
            @onClick(e)
        )
    
}

# you can create an inline closure by using the 'do' keyword.
# this can capture or 'close' over the variables so you can 
# refer to them in another scope.
wait = (fn) ->
    setTimeout(fn, 1000)

for i in [1..5]
    wait(() ->
        console.log(i)
    )

