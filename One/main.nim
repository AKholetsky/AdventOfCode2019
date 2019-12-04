import math
import strutils

var fuelSum = 0
for line in "input.txt".lines:
    let mass = parseInt(line)
    let fuel = floor(mass / 3) - 2
    var additionalFuel = floor(fuel / 3) - 2
    var sumOfAditional = 0
    while additionalFuel > 0:
        sumOfAditional += additionalFuel.int
        additionalFuel = floor(additionalFuel / 3) - 2

    fuelSum += fuel.int + sumOfAditional.int

echo fuelSum
