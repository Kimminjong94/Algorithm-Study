let nums = readLine()!.split(separator: " ").map {Int($0)!}

let a = nums[0]
let b = nums[1]
let c = nums[2]
let d = nums[3]
let e = nums[4]
let f = nums[5]

let x = (-(e * c) + (b * f)) / (-(e * a) + (b * d))
let y = (-(d * c) + (a * f)) / (-(d * b) + (a * e))

print(x, y)