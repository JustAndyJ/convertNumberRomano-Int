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

// forma 2

func solution(_ string: String) -> Int {

    let table: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]

    var p = 0

    let transform: (Character) -> Int = {
      
        let result = table[$0]!

        print(type(of: $0))
        if result > p {
          
            p = result
        }

        return result < p ? -result : result
    }

    let reversedArray = string.reversed()
  
    let transformedArray = reversedArray.map(transform)
  
    let finalResult = transformedArray.reduce(0, +)

    return finalResult
}

let result = solution("MMCDXXI")

print(result) // Imprime 2421
