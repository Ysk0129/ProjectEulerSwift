
extension Array{
    func split(length: Int) -> [Array]{
        var reaming = self
        var newArr = [Array]()
        while(reaming.count > 0){
            newArr.append(Array(reaming.prefix(length)))
            reaming = Array(reaming.dropFirst(length))
        }
        return newArr
    }
    
    func splitFromBack(length: Int) -> [Array]{
        var reaming = self
        var newArr = [Array]()
        while(reaming.count > 0){
            newArr.append(Array(reaming.suffix(length)))
            reaming = Array(reaming.dropLast(length))
        }
        return newArr
    }
}
