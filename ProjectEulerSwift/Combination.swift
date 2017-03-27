
extension ProjectEuler{
    static func nCr(n: Int, r: Int) -> Int{
        if(n < r){
            return 0
        }
        return n.factorial() / (r.factorial() * (n - r).factorial())
    }
}
