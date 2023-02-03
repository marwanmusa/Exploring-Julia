# Getting Started
#=
Topics
1. How to print
2. How to assign
3. Syntax for basic math
=#

# How to println
println("Hello world")

# How to assign variables
my_var = 50
typeof(my_var)

my_pi = 3.14159
typeof(my_pi)

🚀 = "My Rocket!"
typeof(🚀)

#=
After assigning a value to a variable, we can reassign a value
of a differebt type to that variable without any issue.
=#

🚀 = 3
typeof(🚀)

#=
Note: Julia allows us to write super generic code, and 🚀 is an example of this.<br>
This allows us to write code like
=#

🚲 = 0
🚕 = -1

🚕 + 🚀 == 🚲 # will result -> true


# How to comment
# You can leave comments on a single line using the pound/hash key

#=

For multi-line comments,
use the '#= =#' sequence.

=#


# Syntax for basic math
sum = 3 + 7
difference = 10 - 3
product = 20 * 5
quotient = 100 / 10
power = 10 ^ 2
modulus = 101 % 2