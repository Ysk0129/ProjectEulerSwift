
extension ProjectEuler{
    static func getSumPrimeNumbers(maxValue: Int) -> Int{
        if let sumPrimeNum = getPrimeNumbers(maxValue: maxValue) {
            return sumPrimeNum.reduce(0){$0 + $1}
        }
        return 0
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

class P10: ProjectEuler{
    static func answer() -> Int {
        return getSumPrimeNumbers(maxValue: 2000000)
    }
}
