import Foundation
extension ProjectEuler{
    static func getMaxPalindromicNumber(prodDigit: Int) -> Int{
        if(prodDigit < 2){
            return 0
        }
        let maxValue = Int(pow(Double(10), Double(prodDigit))) - 1
        let minValue = Int(pow(Double(10), Double(prodDigit - 1)))
        var maxPalindromicNum = 0
        var endValue = 0
        
        for_i: for i in (minValue...maxValue).reversed(){
            for_j: for j in (minValue...maxValue).reversed(){
                if(endValue > i && endValue > j){
                    break for_i
                }
                if(isPalindromicNumber(value: i * j)){
                    maxPalindromicNum = i * j > maxPalindromicNum ? i * j : maxPalindromicNum
                    endValue = i < j ? i : j
                    break for_j
                }
            }
        }
        return maxPalindromicNum
    }
    
    static func isPalindromicNumber(value: Int) -> Bool{
        let strValue = String(value)
        let reverseValue = String(strValue.characters.reversed())
        return strValue == reverseValue
    }
}

class P4: ProjectEuler{
    static func answer() -> Int {
        return getMaxPalindromicNumber(prodDigit: 3)
    }
}
