# variables are defined ahead of scope. no need to use var to define them
name = 'ciaran'

# lexical scoping
outer = 1
changeNumbers = () ->
    inner = 2
    outer = 3

inner = changeNumbers()

console.log(outer)
console.log(inner)

# the whole of this script is, by default, wrapped in a protective closure
# so the variables do not pollute the global namespace.
# if you need to expose a global, use the 'exports' variable on node.js
# or the 'window' variable in the browser.

# you can soak up null references by using the existential operator: ?.

lottery = {
    drawWinner: () ->
        {
            postCode: 'E1 6JJ'
        }
}

winningPostCode = lottery.drawWinner?().address?.postCode
console.log(winningPostCode) # undefined, instead of error

# coffeescript always uses the type-aware equals operator, ===
# so your == operations behave as expected

console.log('1' == 1) # false