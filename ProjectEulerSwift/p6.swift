import Foundation
extension ProjectEuler{
    static func diffSumSquares(number: Int) -> Int{
        if(number <= 1){
            return 0
        }
        let sumOfSquares = (1...number).map{$0 * $0}.reduce(0){$0 + $1}
        let squareOfSum = Int(pow(Double((1...number).reduce(0){$0 + $1}),2))
        return squareOfSum - sumOfSquares
    }
}

class P6: ProjectEuler{
    static func answer() -> Int {
        return diffSumSquares(number: 100)
    }
}
