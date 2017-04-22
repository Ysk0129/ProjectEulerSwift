
class P3: ProjectEuler{
    static func answer() -> Int {
        guard let max = getPrimeFactors(value: 600851475143).max() else{
            return 0
        }
        return max
    }
}
