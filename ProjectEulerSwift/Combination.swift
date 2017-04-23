
extension ProjectEuler{
    static func nCr(n: Int, r: Int) -> String{
        if(n < r || n < 0 || r < 0){
            return "0"
        }
        let combination = bigDiv(dividend: bigFactorial(n: n), divisor: bigMulti(n: bigFactorial(n: r),m: bigFactorial(n: n - r)))
        
        return combination
    }
}
