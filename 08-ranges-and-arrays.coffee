# lets define an array
guestlist = ['Tom', 'Sue', 'Bob', 'Terry', 'Jill', 'Rosie']

firstTwo = guestList[0..1] # two dots in the range means inclusive

twoThreeFour = guestList[1...4] # three dots means exclude the end. 

firstFour = guestList[...4] # missing the first number means start from the beginning

lastTwo = guestlist[guestlist.length - 2...] # missing the last number means to the end.
                                             # you can use expressions in the ranges too