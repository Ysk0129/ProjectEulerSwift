
struct NumericString{
    let numString: String
    var numIntArr: [Int]{
        //Todo: Writing processing when a value other than numbers is included
        return numString.characters.map{Int(String($0))!}
    }
}
