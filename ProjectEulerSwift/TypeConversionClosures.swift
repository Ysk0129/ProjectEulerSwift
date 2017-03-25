
struct TypeConversionClosures{
    static let int = {(str: String) -> Int in return Int(str)!}
    static let int64 = {(str: String) -> Int64 in return Int64(str)!}
    static let uInt64 = {(str: String) -> UInt64 in return UInt64(str)!}
    static let double = {(str: String) -> Double in return Double(str)!}
}
