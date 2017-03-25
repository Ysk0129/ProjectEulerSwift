
extension String{
    func split(length: Int) -> [String]{
        var reaming = self
        var strArr = [String]()
        while(reaming.characters.count > 0){
            strArr.append(String(reaming.characters.prefix(length)))
            reaming = String(reaming.characters.dropFirst(length))
        }
        return strArr
    }
    
    func splitFromBack(length: Int) -> [String]{
        var reaming = self
        var newArr = [String]()
        while(reaming.characters.count > 0){
            newArr.append(String(reaming.characters.suffix(length)))
            reaming = String(reaming.characters.dropLast(length))
        }
        return newArr
    }
}
