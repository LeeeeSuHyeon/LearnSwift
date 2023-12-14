struct Address {
    private var cityname : String = ""
    var city : String {
        get {cityname}
        set {cityname = newValue.uppercased()}
    }
}

var address = Address()
address.city = "London"
print(address.city)     // LONDON


@propertyWrapper
struct FixCase {
    private(set) var value : String = ""
    
    var wrappedValue : String {
        get {value}
        set {value = newValue.uppercased()}
    }
    
    init(wrappedValue initialValue : String){
        self.wrappedValue = initialValue
    }
}

struct Contact {
    @FixCase var name : String
    @FixCase var city : String
    @FixCase var country : String
}

var contact = Contact(name: "John Smith", city: "London", country: "United Kingdom")
print("\(contact.name), \(contact.city), \(contact.country)")  // JOHN SMITH, LONDON, UNITED KINGDOM



//@propertyWrapper
//struct MinMaxVal{
//    var value : Int
//    let max : Int
//    let min : Int
//    
//    init(wrappedValue : Int, min : Int, max : Int){
//        value = wrappedValue
//        self.min = min
//        self.max = max
//    }
//    
//    var wrappedValue : Int {
//        get { return value }
//        set {
//            if newValue > max {
//                value = max
//            } else if newValue < min {
//                value = min
//            } else {
//                value = newValue
//            }
//        }
//    }
//}
//
//struct Demo {
//    @MinMaxVal(min : 10, max : 150) var value : Int = 100
//}
//
//var demo = Demo()
//demo.value = 140
//print(demo.value)   // 140
//
//demo.value = 250
//print(demo.value)   // 150

import Foundation

@propertyWrapper
struct MinMaxVal<V : Comparable>{
    var value : V
    let max : V
    let min : V
    
    init(wrappedValue : V, min : V, max : V){
        value = wrappedValue
        self.min = min
        self.max = max
    }
    
    var wrappedValue : V {
        get { return value }
        set {
            if newValue > max {
                value = max
            } else if newValue < min {
                value = min
            } else {
                value = newValue
            }
        }
    }
}


struct Demo {
    @MinMaxVal(min : Date(), max : Calendar.current.date(byAdding: .month, value : 1, to: Date())!) var value : Date = Date()
}

var demo = Demo()
print(demo.value)   // 2023-12-14 12:24:18 +0000    -> 디폴트로 현재 날짜가 프로퍼티에 설정

// 프로퍼티에 10일 후의 날짜를 설정
demo.value = Calendar.current.date(byAdding: .day, value : 10, to: Date())!
print(demo.value)   // 2023-12-24 12:24:18 +0000    -> 유효 범위 내이므로 프로퍼티에 저장

// 프로퍼티에 2달 후의 날짜를 설정
demo.value = Calendar.current.date(byAdding: .month, value : 2, to: Date())!
print(demo.value)   // 2024-01-14 12:24:18 +0000    -> 유효 범위 밖이므로 최댓값이 저장



//struct Demo {
//    @MinMaxVal(min : "Apple", max : "Orange") var value : String = ""
//}
//
//var demo = Demo()
//demo.value = "Banana"
//print(demo.value)   // Banana - 주어진 알파벳 범위 내에 있어서 저장됨
//
//demo.value = "Pear"
//print(demo.value)   // Orange - 주어진 알파벳 범위 밖이므로 지정된 최댓값으로 대체
