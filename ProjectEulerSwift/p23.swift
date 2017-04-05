import Foundation
extension ProjectEuler{
    
    static func getAbundantNumbers(max: Int) -> [Int]{
        let abundantNumbers = (12...max).filter{(x) -> Bool in
                return getAllDivisors(n: x).filter{$0 != x}.reduce(0){$0 + $1} > x
            }
        return NSOrderedSet(array: abundantNumbers).array as! [Int]
    }
    
    static func getNotSumOfAbundantNumbers() ->[Int]{
        var notSumOfAbundantNumbers = [Int]()
        let abundantNumbers = getAbundantNumbers(max: 28123)
        
        for_i: for i in 25...28123{
            for_j: for j in abundantNumbers{
                if(i < j){
                    continue for_i
                }
                if(abundantNumbers.index(of: i - j) == nil){
                    if(notSumOfAbundantNumbers.index(of: j) == nil){
                        notSumOfAbundantNumbers.append(j)
                    }
                    continue for_i
                }
            }
        }
        return notSumOfAbundantNumbers
    }
}

class P23: ProjectEuler{
    static func answer() -> Int{
        return getNotSumOfAbundantNumbers().reduce(0){$0 + $1}
    }
}
