// small task :  create a struct to store information about a car, including its model,
// number of seats, and current gear, then add a method to change gears up or down.


import Swift


enum handleError: Error {
    case non_valid
}
struct Car {
    static let carModel = "BMW"
    static let numOfSeats = 5
    private(set) var gear = "R"
    var gear_set = ["R", "1", "2", "3", "4", "5"]
    var g = 0
    
    mutating func gears_up() throws{
       g += 1 
       if g >= gear_set.count
            {throw handleError.non_valid}
        gear = gear_set[g]
        
    }

    mutating func gears_down() throws {
        g -= 1
        if g < 0
            {throw handleError.non_valid}
        gear = gear_set[g]
    }
}

var myCar = Car()
print(myCar.gear)
do {
    try myCar.gears_up()
    print(myCar.gear)
     try myCar.gears_up()
    print(myCar.gear)
     try myCar.gears_up()
    print(myCar.gear)
     try myCar.gears_up()
    print(myCar.gear)
     try myCar.gears_up()
    print(myCar.gear)
    try myCar.gears_down()
    print(myCar.gear)
     try myCar.gears_down()
    print(myCar.gear)

}
catch {
    print("Error, Choose the right gear!")
}
