# switch statements auto-break so you don't have to
# use else to create a default case
name = 'Dave'

switch name
    when 'Jim' then console.log 'Hi, Jim!'
    when 'Bob', 'Ted' then console.log 'You\'re not Jim!'
    else console.log 'Excuse me, I don\'t know who you are'

# if statements can be postfix or prefix
passed = true

# the following two statements are exactly the same
if passed then console.log('you passed')
console.log('you passed') if passed

# conditional assignment...
mood = if passed then 'happy' else 'sad'
console.log mood

# loop comprehensions...
console.log(item) for item in ['box', 'tin', 'cake']

# using guards on the loop...
console.log(i) for i in [1..10] when i % 2 isnt 0 
# or...
for i in [1..10] when i % 2 isnt 0
    console.log(i)

# collecting the results of a loop...
evenNumbers = (i for i in [2..10] by 2)
console.log(evenNumbers)
