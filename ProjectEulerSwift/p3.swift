import Foundation
extension ProjectEuler{
    static func getMaxPrimeFactor(value: UInt64) -> Int{
        guard let maxPrimeFactor = getPrimeFactors(value: value).max() else {
            return 0
        }
        return maxPrimeFactor
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
}

class P3: ProjectEuler{
    static func answer() -> Int {
        return getMaxPrimeFactor(value: 600851475143)
    }
}
