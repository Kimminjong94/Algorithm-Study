var input = Int(readLine()!)!


for i in 1...input {
    for i in stride(from: input , to: i, by: -1) {
        print(" ", terminator: "")
}
    for _ in stride(from: 0, to: i, by: 1){
          print("*", terminator: "")
      }
    
    print("")

}