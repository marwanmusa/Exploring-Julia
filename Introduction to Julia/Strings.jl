# Strings
#=
Topics:

How to get a string
String interpolation
String concatenation
=#

# How to get a string
# Enclose your characters in " " or """ """!

s1 = "I am a string."

s2 = """I am also a string. """

#=
There are a couple functional differences between strings enclosed in single and triple quotes.
One difference is that, in the latter case, you can use quotation marks within your string.
=#

"Here, we get an "error" because it's ambiguous where this string ends "

"""Look, Mom, no "errors"!!! """

# Note that ' ' define a character, but NOT a string!
typeof('a')

'We will get an error here'

# String interpolation
#=
We can use the $ sign to insert existing variables into a string and to evaluate expressions within a string.
Below is an example that contains some highly sensitive personal information.
=#

name = "Jane"
num_fingers = 10
num_toes = 10

println("Hello, my name is $name.")
println("I have $num_fingers fingers and $num_toes toes.")

println("That is $(num_fingers + num_toes) digits in all!!")

# String concatenation
#=
Below are three ways we can concatenate strings!

The first way is to use the string() function.
string() converts non-string inputs to strings.
=#

s3 = "How many cats ";
s4 = "is too many cats?";
😺 = 10

string(s3, s4)

string("I don't know, but ", 😺, " is too few.")

# We can also use * for concatenation!
s3*s4