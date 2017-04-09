
extension ProjectEuler{
    
    static func bigNumAddition(n: String, m: String) -> String{
        var larger = [Int]()
        var smaller = [Int]()
        
        if(n.characters.count > m.characters.count){
            larger = Array(n.characters.map{Int(String($0))!}.reversed())
            smaller = Array(m.characters.map{Int(String($0))!}.reversed())
        }else{
            larger = Array(m.characters.map{Int(String($0))!}.reversed())
            smaller = Array(n.characters.map{Int(String($0))!}.reversed())
        }
        
        var result = [Int]()
        var climbingUp = 0
        
        for i in 0...larger.count - 1{
            
            var sum = 0
            
            if(smaller.count > i){
                sum = larger[i] + smaller[i] + climbingUp
            }else{
                sum = larger[i] + climbingUp
            }
            climbingUp = 0
            
            if(String(sum).characters.count > 1){
                climbingUp = Int(String(sum).substring(to: String(sum).index(String(sum).endIndex, offsetBy: -1)))!
                sum = Int(String(sum).substring(from: String(sum).index(String(sum).endIndex, offsetBy: -1)))!
            }
            
            result.append(sum)
        }
        
        if(climbingUp > 0){
            result.append(climbingUp)
        }
        
        return result.map{String($0)}.reversed().joined()
    }
    
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
            z = bigNumAddition(n: x, m: y)
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
