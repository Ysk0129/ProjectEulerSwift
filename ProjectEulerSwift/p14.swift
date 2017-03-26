
extension ProjectEuler{
    static func getLongestCollatzSequenceStartNumber(maxValue: Int) -> Int{
        var maxLength = 0
        var maxStart = 0
        var start = 2
        
        while(maxValue > start){
            var n = start
            var count = 1
            while(n > 1){
                if(n % 2 == 0){
                    n /= 2
                    count += 1
                }else{
                    n = n * 3 + 1
                    count += 1
                }
            }
            if(maxLength < count){
                maxLength = count
                maxStart = start
            }
            start += 1
        }
        return maxStart
    }
}

class P14: ProjectEuler{
    static func answer() -> Int {
        return getLongestCollatzSequenceStartNumber(maxValue: 1000000)
    }
}
