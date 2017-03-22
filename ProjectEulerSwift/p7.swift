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
}

class P7: ProjectEuler{
    static func answer() -> Int {
        return getPrimeNumberOf(nth: 10001)
    }
}
