
class P16: ProjectEuler{
    static func answer() -> Int {
        return bigPow(base: 2, exponent: 1000).characters.map{Int(String($0))!}.reduce(0){$0 + $1}
    }
}

