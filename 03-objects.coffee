# objects in coffeescript can be defined using the standard javascript object notation:
obj = {
    key: 'value',
    '1test': 123
}

# ...or you can define them using a yaml-like syntax. 
# this works pretty great as you don't have to worry about trailing commas all the time:

another =
    key: 'value'
    function: () -> console.log('a function')
    nested:
        example: ['an', 'array']

# in the example above, we're using a reserved word as a member of our object. 
# in javascript you'd have to define this using quotes, but coffeescript does this for you!
# this is also the case when accessing object properties:

another.function()
