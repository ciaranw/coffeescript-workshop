# coffeescript allows you to define simple classes in a standard way
class MyClass
    constructor: () ->
        console.log('I am ALIVE')
    
    announce: () ->
        console.log('I am a MyClass')
    

# The class is now available so you can instantiate it:
myClass = new MyClass()

# you can inherit from another class by using the 'extends' keyword...
class Animal
    # the @name syntax here is a shortcut for assigning 'name' to this.name
    constructor: (@name) ->
    
    move: (meters) ->
        console.log('moved ' + meters + ' meters')
    

class Dog extends Animal
    move: ->
        console.log('I AM A DOG! YOU ARE MY BEST FRIEND!')
        super 10
    

class Cat extends Animal
    move: ->
        console.log('Go away human, you are beneath me.')
        super 1
    

doug = new Dog('doug')
mrSnuffles = new Cat('Mr Snuffles')

doug.move()
mrSnuffles.move()

