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
    
    static func bigMulti(n: String, m: String) ->String{
        let nArr = Array(n.characters.map{Int(String($0))!}.reversed())
        let mArr = Array(m.characters.map{Int(String($0))!}.reversed())
        
        var nums = [[Int]]()
        var digit = 0
        for i in nArr{
            var climbingUp = 0
            var tmpArr = mArr.map{ (x) -> Int in
                var num = 0
                num = x * i + climbingUp
                climbingUp = 0
                if(String(num).characters.count > 1){
                    climbingUp = Int(String(num).substring(to: String(num).index(String(num).endIndex, offsetBy: -1)))!
                    num = Int(String(num).substring(from: String(num).index(String(num).endIndex, offsetBy: -1)))!
                }
                return num
            }
            
            if(climbingUp > 0){
                tmpArr.append(climbingUp)
                climbingUp = 0
            }
            
            var carry = digit
            while(carry > 0){
                tmpArr.insert(0, at: 0)
                carry -= 1
            }
            
            nums.append(tmpArr)
            digit += 1
        }
        
        let numsStrs = nums.map{$0.map{String($0)}.reversed().joined()}
        var bigProd = "0"
        for num in numsStrs{
            bigProd = bigAddition(n: bigProd, m: num)
        }
        
        return bigProd
    }

    static func bigAddition(n: String, m: String) -> String{
        var larger = [Int]()
        var smaller = [Int]()
        
        if(n.characters.count > m.characters.count){
            larger = Array(n.characters.map{Int(String($0))!}.reversed())
            smaller = Array(m.characters.map{Int(String($0))!}.reversed())
        }else{
            larger = Array(m.characters.map{Int(String($0))!}.reversed())
            smaller = Array(n.characters.map{Int(String($0))!}.reversed())
        }
        
        var result = [Int]()
        var climbingUp = 0
        
        for i in 0...larger.count - 1{
            
            var sum = 0
            
            if(smaller.count > i){
                sum = larger[i] + smaller[i] + climbingUp
            }else{
                sum = larger[i] + climbingUp
            }
            climbingUp = 0
            
            if(String(sum).characters.count > 1){
                climbingUp = Int(String(sum).substring(to: String(sum).index(String(sum).endIndex, offsetBy: -1)))!
                sum = Int(String(sum).substring(from: String(sum).index(String(sum).endIndex, offsetBy: -1)))!
            }
            
            result.append(sum)
        }
        
        if(climbingUp > 0){
            result.append(climbingUp)
        }
        
        return result.map{String($0)}.reversed().joined()
    }
}
