var nums :[Int] = []

for _ in 1...9 {
   let a = Int(readLine()!)!
   nums.append(a)
}

for i in 0...8 {
    if nums[i] == nums.max()! {
      print("\(nums.max()!)\n\(i+1)")
    }
}