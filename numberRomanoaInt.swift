func solution(_ string:String) -> Int {

  let numberRomano = string.reversed()
  var number = 0
  var sum = 0
  var num = 0
  
    for i in numberRomano {   
    let string = String(i)
     switch string.uppercased() {
      case "M":
        num = 1000
      case "D":
        num = 500
      case "C":
        num = 100
      case "L":
        num = 50 
      case "X":
        num = 10
      case "V":
        num = (5) 
      case "I":
        num = 1
      default:
        print("Error")
        break
    }  
      if num >= number {
        sum += num
        number = num
      } else {
        sum -= num
        number = num
      }
    }
  return sum
}
let result = solution("MMCDXXI")
print(result)