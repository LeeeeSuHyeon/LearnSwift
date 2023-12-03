
//print("Int32 Min = \(Int32.min) Int32 Max = \(Int32.max)")
//// Int32 Min = -2147483648 Int32 Max = 2147483647
//
//
//var myChar1 = "f"
//var myChar2 = ":"
//var myChar3 = "X"
//
//var myChar4 = "\u{0058}" // "X"
//
//
//
//var userName = "John"
//var inboxCount = 25
//let maxCount = 100
//
//var message = "\(userName) has \(inboxCount) messages. Message capacity remaining is \(maxCount-inboxCount) messages"
//print(message)
//
//
//var multiline = """
//        The console glowed
//    Clealy Time was running out.
//
//        "I thought you said"
//    """
//print(multiline)


//var newline = "\n"      // 개행 문자
//var backslash = "\\"    // "\"
///*
// \n : 개행
// \r : 캐리지 리턴
// \t : 탭
// \\ : 역슬래시
// \" : 쌍따옴표
// \' : 홑따옴표
// */


//var signalStrength = 2.331    // Double 타입으로 간주
//let conpanyName = "My Company" // String 타입으로 간주
//
//let bookTitle : String
//if false{
//    bookTitle = "SwiftUI"
//}else{
//    bookTitle = " Andorid"
//}

// Tuple
//let myTuple = (10, 432.443, "This is String")
//let myString = myTuple.2
//print(myString) // This is String
//let (myInt, myDouble, myStr) = myTuple
//print(myInt, myDouble, myStr) // 10 432.443 This is String


//let myTuple = (count :10, length : 432.433, message : "This is a String")
//print(myTuple.length)   // 432.433



// 5.8 옵셔널 타입

//var index : Int?
//
//index = 3
//var treeArray = ["Oak", "Pine", "Yew", "Birch"]
//
//// 옵셔널 바인딩
//if let myValue = index {
//    print(treeArray[myValue])
//} else{
//    print("index does not contain a value")
//}
//// Birch

//// 강제 언래핑
//if index != nil{
//    print(treeArray[index])
//}else{
//    print("index does not contain a value")
//}
//// Birch


// 5.9 타입 변환
import UIKit
let myScrollView : UIScrollView = UIScrollView()

if let myTextView = myScrollView as? UITextView{
    print("type cast to UITextView succeeded")
} else{
    print("type cast to UITextView failed")
}

// type cast to UITextView failed


if myobject is MyClass {
    //myobject는 MyClass의 인스턴스이다.
}
