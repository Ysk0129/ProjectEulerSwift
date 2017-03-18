
extension ProjectEuler{
    static func sumEvNumOfFibonacci(maxValue: Int) -> Int{
        var x = 0
        var y = 1
        var z = 0
        var sum = 0
        while(z <= maxValue){
            sum = z % 2 == 0 ? sum + z : sum
            z = x + y
            x = y
            y = z
        }
        return sum
    }
}

class P2: ProjectEuler{
    static func answer() -> Int {
        return sumEvNumOfFibonacci(maxValue: 4000000)
    }
}

