// write a function in a single line
// of code that accepts an optional
// array of integers, and returns one randomly.
// If the array is missing or empty,
// return a random number in the range 1 through 100.


import Swift

func random_array(array: [Int]?) -> Int {
    array?.randomElement() ?? Int.random(in: 1...100)

}

print(random_array(array: [1, 32, 33, 4231, 121]))
print(random_array(array: nil))