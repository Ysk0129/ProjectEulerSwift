import Foundation
extension ProjectEuler{
    static func getPrimeNumberOf(nth: Int) -> Int{
        if(nth < 1){
            return 0
        }
        if(nth == 1){
            return 2
        }
        var remainingPrimeNum = nth - 1
        var currentNum = 3
        var currentPrimeNum = 3
        
        while(remainingPrimeNum > 0){
            if(isPrimeNumber(value: currentNum)){
                remainingPrimeNum -= 1
                currentPrimeNum = currentNum
            }
            currentNum += 2
        }
        return currentPrimeNum
    }
    
    static func isPrimeNumber(value: Int) -> Bool{
        if(value == 2){
            return true
        }
        if(value <= 1 || value % 2 == 0){
            return false
        }
        
        let maxDivisor = Int(sqrt(Double(value)))
        var currentDivisor = 3
        
        while(currentDivisor <= maxDivisor){
            if(value % currentDivisor == 0){
                if(value == currentDivisor){
                    return true
                }
                return false
            }
            currentDivisor += 2
        }
        return true
    }
    
    static func getPrimeFactors(value: UInt64) -> [Int]{
        var factors = [Int]()
        var varValue: UInt64 = value
        var divisor = 3
        let sqrtValue = Int(sqrt(Double(value)))
        
        if(value <= 1){
            return [0]
        }
        while(varValue % 2 == 0){
            factors.append(2)
            varValue /= UInt64(2)
        }
        while(varValue > 1){
            if(varValue % UInt64(divisor) == 0){
                factors.append(divisor)
                varValue /= UInt64(divisor)
            }else{
                divisor += 2
                if(divisor > sqrtValue){
                    factors.append(Int(varValue))
                    return factors
                }
            }
        }
        return factors
    }
    
    static func getPrimeNumbers(maxValue: Int) -> [Int]?{
        if(maxValue <= 1){
            return nil
        }
        if(maxValue == 2){
            return [2]
        }
        
        var primeNumArr = [2]
        var currentNum = 3
        
        while(currentNum <= maxValue){
            if(isPrimeNumber(value: currentNum)){
                primeNumArr.append(currentNum)
            }
            currentNum += 2
        }
        return primeNumArr
    }
}
