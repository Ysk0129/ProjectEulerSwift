import Foundation
extension ProjectEuler{
    
    static func getAbundantNumbers(max: Int) -> [Int]{
        let abundantNumbers = (12...max).filter{(x) -> Bool in
                return getAllDivisors(n: x).filter{$0 != x}.reduce(0){$0 + $1} > x
            }
        return abundantNumbers
    }
    
    static func getNotSumOfAbundantNumbers() ->[Int]{
        
        var notSumOfAbundantNumbers = Array(1...28123)
        let abundantNumbers = getAbundantNumbers(max: 28123)
        var sumOfAbundantNumbers = [Int]()
        var count = 0
        let lim = abundantNumbers.count * abundantNumbers.count
        for_i: for i in abundantNumbers{
            for_j: for j in abundantNumbers{
                count += 1
                if(i < j || i + j > 28123){
                    continue for_i
                }
                guard let index = notSumOfAbundantNumbers.index(of: i + j) else {
                    continue for_j
                }
                notSumOfAbundantNumbers.remove(at: index)
                /*if(sumOfAbundantNumbers.index(of: i + j) == nil){
                    sumOfAbundantNumbers.append(i + j)
                }*/
            }
        }
        
        /*
        for i in 1...28123{
            if(sumOfAbundantNumbers.index(of: i) == nil){
                notSumOfAbundantNumbers.append(i)
            }
        }*/
        return notSumOfAbundantNumbers
    }
}

class P23: ProjectEuler{
    static func answer() -> Int{
        return getNotSumOfAbundantNumbers().reduce(0){$0 + $1}
    }
}
