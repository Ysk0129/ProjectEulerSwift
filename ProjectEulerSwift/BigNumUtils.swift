// Todo: Support when the answer is negative
// Todo: Use a better algorithm
import Foundation
extension ProjectEuler{
    
    static func bigPow(base: Int, exponent: Int) ->String{
        var climbingUp = 0
        var i = 2
        var arr = [base]
        
        if(base == 0){
            return "0"
        }
        if(exponent == 0){
            return "1"
        }
        while(i <= exponent){
            let tmpArr = arr.map{ (x) -> Int in
                var num = 0
                num = x * base + climbingUp
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
            bigProd = bigAdd(n: bigProd, m: num)
        }
        
        return bigProd
    }

    static func bigAdd(n: String, m: String) -> String{
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
    
    static func bigSub(minuend: String, subtrahend: String) -> String{
        
        if(minuend == subtrahend){
            return "0"
        }
        
        var minArr = minuend.characters.reversed().map{Int(String($0))}
        var subArr = subtrahend.characters.reversed().map{Int(String($0))}
        
        if(minArr.count < subArr.count){
            return "negative"
        }
        if(minArr.count == subArr.count){
            for i in 0...minArr.count - 1{
                if(minArr.reversed()[i]! > subArr.reversed()[i]!){
                    break
                }
                if(minArr.reversed()[i]! < subArr.reversed()[i]!){
                    return "negative"
                }
            }
        }
        
        var diff = [Int]()
        var borrow = 0
        for i in 0...subArr.count - 1{
            if(minArr[i]! - borrow < subArr[i]!){
                diff.append(minArr[i]! + 10 - subArr[i]! - borrow)
                borrow = 1
            }else{
                diff.append(minArr[i]! - subArr[i]! - borrow)
                borrow = 0
            }
        }
        
        var index = subArr.count
        while(borrow != 0){
            if(minArr[index]! < borrow){
                diff.append(minArr[index]! + 10 - borrow)
                index += 1
            }else{
                diff.append(minArr[index]! - borrow)
                borrow = 0
                index += 1
            }
        }
        
        if(index < minArr.count){
            for i in index...minArr.count - 1{
                diff.append(minArr[i]!)
            }
        }
        
        // Trim leading 0
        while(diff.last! == 0){
            diff.removeLast()
        }
        
        return diff.reversed().map{String($0)}.joined()
    }
    
    static func bigDiv(dividend: String, divisor: String) -> String{
        
        if(dividend == "0" || divisor == "0"){
            return "0"
        }
        
        let dividendArr = dividend.characters.map{Int(String($0))}
        let divisorArr = divisor.characters.map{Int(String($0))}
        
        let digitDiff = dividendArr.count - divisorArr.count
        var quot = [Int]()

        var currentDividend = dividend
        var digitDiv = Int(String(currentDividend.characters.first!))!
        
        if(digitDiff < 0){
            return "0"
        }
        for i in 0...digitDiff{
            
            let div = digitDiv / Int(String(divisor.characters.first!))!

            if(div == 0){
                quot.append(0)
                digitDiv = Int(String(currentDividend).substring(to: currentDividend.index(currentDividend.startIndex, offsetBy: 2)))!
                continue
            }
            
            let prodDigit = digitDiff - i > 0 ? bigPow(base: 10, exponent: digitDiff - i) : "1"
            var n = bigMulti(n: prodDigit, m: String(div))
            var prod = bigMulti(n: n, m: divisor)

            if(bigSub(minuend: currentDividend, subtrahend: prod) != "negative"){
                
                quot.append(div)
                currentDividend = bigSub(minuend: currentDividend, subtrahend: prod)
                if(bigSub(minuend: currentDividend, subtrahend: divisor) == "negative"){
                    var loop = digitDiff - i
                    while(loop > 0){
                        quot.append(0)
                        loop -= 1
                    }
                    break
                }
                
                if((String(currentDividend)?.characters.count)!  >= dividend.characters.count - i){
                    digitDiv = Int(String(currentDividend).substring(to: currentDividend.index(currentDividend.startIndex, offsetBy: 2)))!
                }else{
                    digitDiv = Int(String(currentDividend.characters.first!))!
                }
                continue
            }
            
            if(div == 1){
                quot.append(0)
                digitDiv = Int(String(currentDividend).substring(to: currentDividend.index(currentDividend.startIndex, offsetBy: 2)))!
                continue
            }
            
            for_j: for j in 1...div{
                n = bigMulti(n: prodDigit, m: String(div - j))
                prod = bigMulti(n: n, m: divisor)
                if(bigSub(minuend: currentDividend, subtrahend: prod) != "negative"){
                    quot.append(div - j)
                    currentDividend = bigSub(minuend: currentDividend, subtrahend: prod)
                    break for_j
                }
            }
            
            if(bigSub(minuend: currentDividend, subtrahend: divisor) == "negative"){
                var loop = digitDiff - i
                while(loop > 0){
                    quot.append(0)
                    loop -= 1
                }
                break
            }
            
            if((String(currentDividend)?.characters.count)! >= dividend.characters.count - i){
                digitDiv = Int(String(currentDividend).substring(to: currentDividend.index(currentDividend.startIndex, offsetBy: 2)))!
            }else{
                digitDiv = Int(String(currentDividend.characters.first!))!
            }
        }
        
        // Trim leading 0
        while(quot.first! == 0){
            quot.removeFirst()
        }
        
        return quot.map{String($0)}.joined()
    }
}
