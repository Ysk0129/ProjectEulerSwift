
extension ProjectEuler{
    
    static func getFirstOfFibonacci(nDigit: Int) -> (nth: Int, value: String){
        if(nDigit <= 0){
            return (nth:0, value: "0")
        }
        if(nDigit == 1){
            return (nth:1, value: "1")
        }
        
        var x = "0"
        var y = "1"
        var z = "1"
        var digitsCount = 0
        var count = 1
        var value = "1"
        while(digitsCount < nDigit){
            z = bigAdd(n: x, m: y)
            x = y
            y = z
            digitsCount = z.characters.count
            count += 1
            value = z
        }
        
        return (nth: count, value: value)
    }
}

class P25: ProjectEuler{
    static func answer() -> Int{
        return getFirstOfFibonacci(nDigit: 1000).nth
    }
}
