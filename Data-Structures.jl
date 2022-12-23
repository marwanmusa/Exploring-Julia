# Data Structures
#=
Once we start working with many pieces of data at once, it will be convenient for us to store data in structures like arrays or dictionaries (rather than just relying on variables).

Types of data structures covered:
Tuples
Dictionaries
Arrays

As an overview, tuples and arrays are both ordered sequences of elements (so we can index into them). Dictionaries and arrays are both mutable. We'll explain this more below!
=#

# Tuples
# We can create a tuple by enclosing an ordered collection of elements in ( ).

myfavoritesports = ("badminton", "chess", "swimming")

# We can index this tuple,

myfavoritesports[1]

# NamedTuples

mystuffs = (phone = "iphone", laptop = "macbook", monitor = "imac")

# Like regular Tuples, NamedTuples are ordered, so we can retrieve their elements via indexing:

mystuffs[1]

# They also add the special ability to access values by their name:

mystuffs.phone

# Dictionaries
#=
If we have sets of data related to one another, we may choose to store that data in a dictionary.
We can create a dictionary using the Dict() function, which we can initialize as an empty dictionary
or one storing key, value pairs.
=#

myphonebook = Dict("Lee" => "867-5309", "Ichigo" => "555-2368")

#= In this example, each name and number is a "key" and "value" pair.
We can grab Ichigo's number (a value) using the associated key
=#

myphonebook["Ichigo"]

# We can add another entry to this dictionary as follows

myphonebook["Kaneki"] = "555-FILK"

# We can delete Kramer from our contact list - and simultaneously grab his number - by using pop!

pop!(myphonebook, "Kaneki")

# Unlike tuples and arrays, dictionaries are not ordered. So, we can't index into them.

myphonebook[1]

# In the example above, julia thinks you're trying to access a value associated with the key 1.

# Arrays
#=
Unlike tuples, arrays are mutable. Unlike dictionaries, arrays contain ordered collections.
We can create an array by enclosing this collection in [ ].
=#

myfriends = ["Lee", "Ichigo", "Kaneki", "Anya", "Kenpachi"]

#=
The 1 in Array{String,1} means this is a one dimensional vector. An Array{String,2} would be a 2d matrix, etc.
The String is the type of each element. or to store a sequence of numbers
=#

fibonacci = [1, 1, 2, 3, 5, 8, 13]
mixture = [1, 1, 2, 3, "Lee", "Ichigo"]

#=
Once we have an array, we can grab individual pieces of data from inside that array by indexing into the array.
For example, if we want the third friend listed in myfriends, we write
=#

myfriends[3]

# We can use indexing to edit an existing element of an array

myfriends[3] = "Kuchiki Rukia"

# Yes, Julia is 1-based indexing, not 0-based like Python.

#=
We can also edit the array by using the push! and pop! functions. push! adds an element to the end of an array and pop! removes the last element of an array.
We can add another number to our fibonnaci sequence
=#

push!(fibonacci, 21)
pop!(fibonacci)

#=
So far I've given examples of only 1D arrays of scalars, but arrays can have an arbitrary number of dimensions and can also store other arrays.
For example, the following are arrays of arrays:
=#

favorites = [["Ichigo", "Kenpachi", "Aizen"],["Lee", "Kakashi", "Naruto"]]
numbers = [[1, 2, 3], [4, 5], [6, 7, 8, 9]]

# Below are examples of 2D and 3D arrays populated with random values.

rand(4, 3)

rand(4, 3, 2)

# Be careful when you want to copy arrays!

fibonacci

somenumbers = fibonacci

somenumbers[1] = 404

# Editing somenumbers caused fibonacci to get updated as well!

#=
In the above example, we didn't actually make a copy of fibonacci. We just created a new way to access the entries in the array bound to fibonacci.
If we'd like to make a copy of the array bound to fibonacci, we can use the copy function.
=#

# First, restore fibonacci
fibonacci[1] = 1
fibonacci

somemorenumbers = copy(fibonacci)

somemorenumbers[1] = 404

# In this last example, fibonacci was not updated. Therefore we see that the arrays bound to somemorenumbers and fibonacci are distinct.
