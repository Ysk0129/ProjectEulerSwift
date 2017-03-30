
class P17: ProjectEuler{
    static func answer() -> Int {
        let baseOne = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
        let baseTen = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
        let hundred = "hundred"
        let thousand = "thousand"
        let exceptions = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
        
        var arr = baseOne + exceptions + baseTen

        for i in 0...8{
            arr.append(baseOne[i] + hundred)
            for j in baseTen{
                arr.append(baseOne[i] + hundred + "and" + j)
                for k in baseOne{
                    if(i == 0){
                        arr.append(j + k)
                    }
                    if(j == baseTen.first!){
                        arr.append(baseOne[i] + hundred + "and" + k)
                    }
                    arr.append(baseOne[i] + hundred + "and" + j + k)
                }
            }
        }
        
        for e in exceptions{
            arr += baseOne.map{$0 + hundred + "and" + e}
        }
        arr.append(baseOne[0] + thousand)
        
        return arr.joined().characters.count
    }
}
