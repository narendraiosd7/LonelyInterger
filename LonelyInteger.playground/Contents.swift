import UIKit

var greeting = [1, 2, 3, 4, 3, 2, 1]

func lonelyinteger(arr: [Int]) {
  var uniqueNumber = 0
  
  for int in arr {
    let count = arr.filter { $0 == int }.count
    
    if count == 1 {
      uniqueNumber = int
    }
  }
  
  print(uniqueNumber)
}

lonelyinteger(arr: greeting)

// MARK: - Another approach

func lonelyinteger1(a: [Int]) {
  var countDict = [Int: Int]()
  
  for int in a {
    countDict[int, default: 0] += 1
  }
  
  var lonelyNumber: Int? = nil
  for int in a {
    if countDict[int] == 1 {
      lonelyNumber = int
      break
    }
  }
  
  print(lonelyNumber ?? 0)
}

lonelyinteger1(a: greeting)
