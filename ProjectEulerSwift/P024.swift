
class P24: ProjectEuler{

    static func answer() -> Int{
        var num = 0
        var count = 0
        let nums = ["0","1","2","3","4","5","6","7","8","9"]
        //Todo:It should use a recursive function
        for_a: for a in nums{
            let B = nums.filter{$0 != a}
            for b in B{
                let C = B.filter{$0 != b}
                for c in C{
                    let D = C.filter{$0 != c}
                    for d in D{
                        let E = D.filter{$0 != d}
                        for e in E{
                            let F = E.filter{$0 != e}
                            for f in F{
                                let G = F.filter{$0 != f}
                                for g in G{
                                    let H = G.filter{$0 != g}
                                    for h in H{
                                        let I = H.filter{$0 != h}
                                        for i in I{
                                            let J = I.filter{$0 != i}
                                            for j in J{
                                                count += 1
                                                if(count == 1000000){
                                                    num = Int(a + b + c + d + e + f + g + h + i + j)!
                                                    break for_a
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        
        let valueOfPermutation = {(nth: Int, arr: [String]) -> String in
            var answer = [String]()
            var currentNum = ""
            var count = 0
            var n = ""
            func permutation(arr: [String]) -> String{
                
                if(arr.count == 1){
                    count += 1
                    if(count == nth){
                        print("OKOK")
                        n = currentNum + arr.last!
                        return currentNum + arr.last!
                    }
                    currentNum = ""
                }
                for i in arr{
                    currentNum += i
                    permutation(arr: arr.filter{$0 != i})
                }
                return n
            }
            return permutation(arr: arr)
        }
        //print(valueOfPermutation(1000000, nums))
        return num
    }
}
