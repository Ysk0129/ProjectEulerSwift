
extension ProjectEuler{
    static func getDivisibleByAll(values: [Int]) -> Int{
        guard let minValue = values.min() else{
            return 0
        }
        guard let maxValue = values.max() else {
            return 0
        }
        var divisibleValue = minValue

        for element in minValue...maxValue {
            var n = 1
            while(true){
                let commonMultiple = element * n
                n += 1
                if(commonMultiple % divisibleValue == 0){
                    divisibleValue = commonMultiple
                    break
                }
            }
        }
        return divisibleValue
    }
}

class P5: ProjectEuler{
    static func answer() -> Int {
        var values = [Int]()
        for i in 1...20 {
            values.append(i)
        }
        return getDivisibleByAll(values: values)
    }
}
