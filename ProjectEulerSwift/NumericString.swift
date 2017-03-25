
struct NumericString{
    static func getArrayOfIntWith(string: String) -> [Int]{
        //Todo: Writing processing when a value other than numbers is included
        return string.characters.map{Int(String($0))!}
    }
    
    static func getArrayWith<T>(string: String, conversion: (_: String) -> T) -> [T]{
        return string.characters.map{conversion(String($0))}
    }
    
    static func getArrayOfIntWith(stringArr: [String]) -> [Int]{
        //Todo: Writing processing when a value other than numbers is included
        return stringArr.map{Int($0)!}
    }
    
    static func getArrayWith<T>(stringArr: [String], conversion: (_: String) -> T) -> [T]{
        //Todo: Writing processing when a value other than numbers is included
        return stringArr.map{conversion($0)}
    }
}
