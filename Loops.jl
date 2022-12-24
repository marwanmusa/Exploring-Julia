# Loops
#=
Topics:
    while loops
    for loops
=#

# While Loops
#=
The syntax for a while is

while *condition*
    *loop body*
end
=#

# For example, we could use while to count or to iterate over an array.
n = 0
while n < 10
    n += 1
    println(n)
end
n

myfriends = ["Lee", "Ichigo", "Kaneki", "Anya", "Kenpachi"]

i = 1
while i <= length(myfriends)
    friend = myfriends[i]
    println("Hi $friend, it's great to see you!")
    i += 1
end

# For Loops
#=
The syntax for a for loop is

for *var* in *loop iterable*
    *loop body*
end
=#

# We could use a for loop to generate the same results as either of the examples above:
for n in 1:10
    println(n)
end

myfriends = ["Lee", "Ichigo", "Kaneki", "Anya", "Kenpachi"]

for friend in myfriends
    println("Hi $friend, it's great to see you!")
end

#=
Now let's use for loops to create some addition tables, where the value of every entry is the sum of its row and column indices.

Note that we iterate over this array via column-major loops in order to get the best performance.
More information about fast indexing of multidimensional arrays inside nested loops can be found at
https://docs.julialang.org/en/v1/manual/performance-tips/#Access-arrays-in-memory-order,-along-columns-1
=#

# First, we initialize an array with zeros.
m, n = 5, 5
A = fill(0, (m, n))

for j in 1:n
    for i in 1:m
        A[i, j] = i + j
    end
end

# Here's some syntactic sugar for the same nested for loop
B = fill(0, (m, n))

for j in 1:n, i in 1:m
    B[i, j] = i + j
end

# The more "Julia" way to create this addition table would have been with an array comprehension.
C = [i + j for i in 1:m, j in 1:n]