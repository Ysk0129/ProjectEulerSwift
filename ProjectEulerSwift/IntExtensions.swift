
extension Int{
    func factorial() -> Int{
        return (2...self).reduce(1){$0 * $1}
    }
}
