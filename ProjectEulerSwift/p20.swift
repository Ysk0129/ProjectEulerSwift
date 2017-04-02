import Foundation
extension ProjectEuler{
    static func bigFactorial(n: Int) ->String{
        var climbingUp: Int = 0
        var i: Int = n - 1
        var arr: [Int] = String(n).characters.map{Int(String($0))!}.reversed()
        
        while(i > 0){
            let tmpArr: [Int] = arr.map{ (x) -> Int in
                var num: Int = 0
                num = x * i + climbingUp
                climbingUp = 0
                if(String(num).characters.count > 1){
                    climbingUp = Int(String(num).substring(to: String(num).index(String(num).endIndex, offsetBy: -1)))!
                    num = Int(String(num).substring(from: String(num).index(String(num).endIndex, offsetBy: -1)))!
                }
                return num
            }
            arr = tmpArr
            if(climbingUp > 0){
                arr += String(climbingUp).characters.map{Int(String($0))!}.reversed()
                climbingUp = 0
            }
            i -= 1
        }
        return arr.map{String($0)}.reversed().joined()
    }
}

class P20: ProjectEuler{
    static func answer() -> Int {
        return bigFactorial(n: 100).characters.map{Int(String($0))!}.reduce(0){$0 + $1}
    }
}

