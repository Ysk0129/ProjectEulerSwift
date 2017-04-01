
extension ProjectEuler{
    static func getDivisibleByAll(values: [Int]) -> Int{
        guard var divisibleValue = values.first else{
            return 0
        }
        if(values.isEmpty || !values.filter{$0 <= 0}.isEmpty){
            return 0
        }
        
        for i in values {
            var n = 1
            while(true){
                let commonMultiple = i * n
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
        let values = (1...20).map{$0}
        return getDivisibleByAll(values: values)
    }
}
