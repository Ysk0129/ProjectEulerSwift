
class P20: ProjectEuler{
    static func answer() -> Int {
        return bigFactorial(n: 100).characters.map{Int(String($0))!}.reduce(0){$0 + $1}
    }
}

