# String interpolation allows you to insert variables into your strings
# use the double quotes and #{} - much like ruby
age = 27
title = "my age is #{age}"
console.log(title)

# Multi line strings
paragraph = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
Etiam sed dolor eget purus tincidunt semper et pharetra mi. 
Aliquam sagittis mattis nisl sit amet ullamcorper. Duis pulvinar, 
ante ac dignissim porttitor, nisl sem aliquet augue, vel lacinia 
massa augue ut elit. Nam venenatis mollis sem a venenatis."
console.log(paragraph)

# block strings preserve indentation - use """ to delimit the block
titleHtml = (title) ->
    """
        <html>
            <head>
                <title>#{title}</title>
            </head>
        </html>
    """

console.log(titleHtml("coffeescript"))

# block regexes
OPERATOR = /// ^ (
  ?: [-=]>             # function
   | [-+*/%<>&|^!?=]=  # compound assign / compare
   | >>>=?             # zero-fill right shift
   | ([-+:])\1         # doubles
   | ([&|<>])\2=?      # logic / shift
   | \?\.              # soak access
   | \.{2,3}           # range or splat
) ///