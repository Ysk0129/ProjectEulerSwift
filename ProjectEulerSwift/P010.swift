
class P10: ProjectEuler{
    static func answer() -> Int {
        guard let primeNumbers = getPrimeNumbers(maxValue: 2000000) else{
            return 0
        }
        return primeNumbers.reduce(0){$0 + $1}
    }
}
