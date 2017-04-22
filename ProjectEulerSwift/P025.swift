
extension ProjectEuler{
    
    static func getFirstOfFibonacci(nDigit: Int) -> Int{
        if(nDigit <= 0){
            return 0
        }
        var x = "0"
        var y = "1"
        var z = "1"
        var digitsCount = 0
        var count = 1
        while(digitsCount < nDigit){
            z = bigAdd(n: x, m: y)
            x = y
            y = z
            digitsCount = z.characters.count
            count += 1
        }
        return count
    }
}

class P25: ProjectEuler{
    static func answer() -> Int{
        return getFirstOfFibonacci(nDigit: 1000)
    }
}
