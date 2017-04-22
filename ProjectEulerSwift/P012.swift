
extension ProjectEuler{
    
    static func getTriangularNumber(nth: Int) -> Int{
        return nth > 0 ? (1 + nth) * nth / 2 : 0
    }
    
    static func getTriangularWith(divCount: Int) -> Int{
        var nth = 1
        var varDivCount = 1
        var previous = 0
        var n = 0
        while(varDivCount < divCount){
            varDivCount = 1
            for i in getPrimeFactors(value: UInt64(getTriangularNumber(nth: nth))).sorted(by: {$0 < $1}){
                if(previous == i){
                    n += 1
                }else{
                    varDivCount = varDivCount * (n + 1)
                    n = 1
                    previous = i
                }
            }
            nth += 1
        }
        return getTriangularNumber(nth: nth - 1)
    }
}

class P12: ProjectEuler{
    static func answer() -> Int {
         return getTriangularWith(divCount: 500)
    }
}
