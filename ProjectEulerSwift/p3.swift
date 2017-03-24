import Foundation
extension ProjectEuler{
    static func getMaxPrimeFactor(value: UInt64) -> Int{
        guard let maxPrimeFactor = getPrimeFactors(value: value).max() else {
            return 0
        }
        return maxPrimeFactor
    }
}

class P3: ProjectEuler{
    static func answer() -> Int {
        return getMaxPrimeFactor(value: 600851475143)
    }
}
