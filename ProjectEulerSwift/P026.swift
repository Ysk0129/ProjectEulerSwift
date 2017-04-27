import Foundation
extension ProjectEuler{
    
    static func getLongestRecurringNum(limitDenominator: Int) -> Int{
        
        var d = 0
        var max = 0
        for_i: for i in 0...limitDenominator{
            
            let currentNum = limitDenominator - i
            
            if(currentNum % 2 == 0 || currentNum % 5 == 0){
                continue
            }
            print(i)
            for_j: for j in 0...limitDenominator - 1{
                
                let n = limitDenominator - j
                
                if(n <= max){
                    continue for_i
                }
                
                let pow = bigPow(base: 10, exponent: n)
                print(pow)
                let div = bigDiv(dividend: pow, divisor: String(currentNum))
                let multi = bigMulti(n: div, m: String(currentNum))
                print(bigSub(minuend: multi, subtrahend: div))
                if(bigSub(minuend: multi, subtrahend: div) == "1"){
                    max = n
                    d = currentNum
                    
                    if(max == limitDenominator - 1){
                        break for_i
                    }
                }
            }
        }
        
        return d
    }
}

class P26: ProjectEuler{
    static func answer() -> Int{
        return getLongestRecurringNum(limitDenominator: 1000)
    }
}
