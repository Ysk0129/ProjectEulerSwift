import Foundation
extension ProjectEuler{
    static func bigPow(n: Int, m: Int) ->String{
        var climbingUp = 0
        var i = 2
        var arr = [n]
        
        while(i <= m){
            let tmpArr = arr.map{ (x) -> Int in
                var num = 0
                num = x * n + climbingUp
                climbingUp = 0
                if(String(num).characters.count > 1){
                    climbingUp = Int(String(num).substring(to: String(num).index(String(num).endIndex, offsetBy: -1)))!
                    num = Int(String(num).substring(from: String(num).index(String(num).endIndex, offsetBy: -1)))!
                }
                return num
            }
            arr = tmpArr
            if(climbingUp > 0){
                arr.append(climbingUp)
                climbingUp = 0
            }
            i += 1
        }
        return arr.map{String($0)}.reversed().joined()
    }
}

class P16: ProjectEuler{
    static func answer() -> Int {
        return bigPow(n: 2, m: 1000).characters.map{Int(String($0))!}.reduce(0){$0 + $1}
    }
}

