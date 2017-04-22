import Foundation
extension ProjectEuler{
    static func dayOf(weekDay: Int, between: Int, to: Int) -> [DateComponents]{

        let ca = NSCalendar.current
        var start = ca.date(from: DateComponents(year: between, month: 1, day: 1))
        let end = ca.date(from: DateComponents(year: to, month: 12, day: 31))
        var first = ca.dateComponents(in: .current, from: start!).weekday

        var i = 1
        while(weekDay != first){
            start = ca.date(from: DateComponents(year: between, month: 1, day: 1 + i))
            first = ca.dateComponents(in: .current, from: start!).weekday
            i += 1
        }
        
        var dateCompArr = [DateComponents]()
        while(start! <= end!){
            dateCompArr.append(ca.dateComponents(in: .current, from: start!))
            start = Date(timeInterval: 24 * 60 * 60 * 7, since: start!)
        }
        
        return dateCompArr
    }
}

class P19: ProjectEuler{
    static func answer() -> Int {
        return dayOf(weekDay: 1, between: 1901, to: 2000).filter{$0.day == 1}.count
    }
}
