import Foundation
extension ProjectEuler{
    static func getProdPythagoreanABCWithSum(sum: Int) -> [Int]{
        if let prodPythagorean = getPythagoreanABCWithSum(sum: sum){
            return prodPythagorean.map{$0.values.reduce(1){$0 * $1}}
        }
        return [0]
    }
    
    static func getPythagoreanABCWithSum(sum: Int) -> [Dictionary<String, Int>]?{
        // (1). a^2 + b^2 = c^2
        // (2). a + b + c = sum
        // (3). a < b < c
        // (2)'. (2). -> c = sum - (a + b)
        // Substitute 2'. for 1.
        // (4). a^2 + b^2 = (sum - (a + b))^2
        // Since (2). and (3). conditions exist, (5). is established
        // (5). 1 =< a < sum / 3, 2 =< b < sum / 2, sum / 3 + 1 =< c < sum - 3
        
        if(sum < 3){
            return nil
        }
        
        var pythagoreanDict = [Dictionary<String, Int>]()
        //Todo: (5). Make a good implementation using conditions
        for a in 1..<sum / 3{
            for b in (a + 1)..<sum / 2{
                let c = sum - (a + b)
                if(a + b + c == sum && a * a + b * b == c * c){
                    pythagoreanDict.append(["a": a, "b": b, "c": c])
                }
            }
        }
        if(pythagoreanDict.isEmpty){
            return nil
        }
        return pythagoreanDict
    }
}

class P9: ProjectEuler{
    static func answer() -> Int {
        return getProdPythagoreanABCWithSum(sum: 1000)[0]
    }
}
