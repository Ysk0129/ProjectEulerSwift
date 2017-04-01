
struct NumericString{
  
    static func getArrayWith<T>(string: String, conversion: (_: String) -> T) -> [T]{
        //Todo: Writing processing when a value other than numbers is included
        return string.characters.map{conversion(String($0))}
    }
   
    static func getArrayWith<T>(stringArr: [String], conversion: (_: String) -> T) -> [T]{
        //Todo: Writing processing when a value other than numbers is included
        return stringArr.map{conversion($0)}
    }
}
