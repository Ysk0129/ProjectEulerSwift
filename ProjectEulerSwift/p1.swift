
extension ProjectEuler{
    static func sumMultiples(smallValue: Int, largeValue: Int, maxValue: Int) -> Int{
        if(1 > smallValue || smallValue > largeValue || largeValue > maxValue){
            return 0
        }
        let sum = (smallValue..<maxValue)
            .filter{ (x) -> Bool in x % smallValue == 0 || x % largeValue == 0 }
            .reduce(0){ $0 + $1 }
        return sum
    }
}

class P1: ProjectEuler{
    static func answer() -> Int {
        return sumMultiples(smallValue: 3, largeValue: 5, maxValue: 1000)
    }
}
