
extension ProjectEuler{
    
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
        guard let primeNumbers = getPrimeNumbers(maxValue: 2000000) else{
            return 0
        }
        return primeNumbers.reduce(0){$0 + $1}
    }
}
