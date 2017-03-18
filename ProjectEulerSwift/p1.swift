
extension ProjectEuler{
    static func sumMultiples(arg1: Int, arg2: Int, maxValue: Int) -> Int{
        let smallValue = arg1 < arg2 ? arg1 : arg2
        let largeValue = arg1 > arg2 ? arg1 : arg2
        let sum = (smallValue..<maxValue)
            .filter{ (x) -> Bool in x % smallValue == 0 || x % largeValue == 0 }
            .reduce(0){ (num1, num2) -> Int in num1 + num2 }
        return sum
    }
}

class P1: ProjectEuler{
    static func answer() -> Int {
        return sumMultiples(arg1: 3, arg2: 5, maxValue: 1000)
    }
}
