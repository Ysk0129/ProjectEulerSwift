
extension ProjectEuler{
    static func getAllDivisors(n: Int) -> [Int]{
        //As of now, only positive numbers
        if(n <= 0){
            return [0]
        }
        if(n <= 1){
            return [1]
        }
        //Include the original number so that it can be reused
        var divisors = [1, n]
        var maxloop = n / 2
        var divisor = 2
        
        while(divisor < maxloop){
            if(n % divisor == 0){
                divisors.append(divisor)
                divisors.append(n / divisor)
                maxloop = n / divisor
            }
            divisor += 1
        }
        return divisors
    }
    
    static func getAmicableNumbers(lessThan: Int) -> [Int]{
        var amicableNumbers = [Int]()
        var i = 1
        
        while(i < lessThan){
            let sum = getAllDivisors(n: i).filter{$0 != i}.reduce(0){$0 + $1}
            let divOfSum = getAllDivisors(n: sum).filter{$0 != sum}.reduce(0){$0 + $1}
            if(i == divOfSum && i != sum && sum < lessThan){
                //To avoid duplication "sum" is not append
                amicableNumbers.append(i)
            }
            i += 1
        }
        return amicableNumbers
    }
}

class P21: ProjectEuler{
    static func answer() -> Int {
        return getAmicableNumbers(lessThan: 10000).reduce(0){$0 + $1}
    }
}
