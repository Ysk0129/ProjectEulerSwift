import Foundation
extension ProjectEuler{
    
    static func getAbundantNumbers(max: Int) -> [Int]{
        let abundantNumbers = (12...max).filter{(x) -> Bool in
                return getAllDivisors(n: x).filter{$0 != x}.reduce(0){$0 + $1} > x
            }
        return abundantNumbers
    }
    
    static func getNotSumOfAbundantNumbers() ->[Int]{
        
        let abundantNumbers = getAbundantNumbers(max: 28123)
        var sumOfAbundantNumbers = [Int]()
        for_i: for i in abundantNumbers{
            for_j: for j in abundantNumbers{
                if(i < j || i + j > 28123){
                    continue for_i
                }
                if(sumOfAbundantNumbers.index(of: i + j) == nil){
                    sumOfAbundantNumbers.append(i + j)
                }
            }
        }
        
        var notSumOfAbundantNumbers = [Int]()
        for i in 1...28123{
            if(sumOfAbundantNumbers.index(of: i) == nil){
                notSumOfAbundantNumbers.append(i)
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
