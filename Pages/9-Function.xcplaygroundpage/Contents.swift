func sayHello(){
    print("hello")
}


// 매개변수로 문자열 하나와 정수 하나를 받으며 문자열 결과를 반환하는 함수
//func buildMessageFor(name : String, count : Int) -> String {
//    "\(name), you are customer number \(count)"
////    return "\(name), you are customer number \(count)"
//    
//}
//
//print(buildMessageFor(name: "lee", count: 2))   // lee, you are customer number 2
//

//// 외부 매개변수명, 내부 매개변수명
//func buildMessageFor(_ name : String, _ count : Int) -> String {
//         "\(name), you are customer number \(count)"
//}
//
//let message = buildMessageFor("lee", 2) // "lee, you are customer number 2"



//// 외부 매개변수명, 내부 매개변수명
//func buildMessageFor(userName name : String, userCount count : Int) -> String {
//         "\(name), you are customer number \(count)"
//}
//
//let message = buildMessageFor(userName : "lee", userCount:  2) // "lee, you are customer number 2"


//// 디폴트 매개변수
//func buildMessageFor(_ name : String = "Customer", count : Int) -> String {
//         "\(name), you are customer number \(count)"
//}
//
//let message = buildMessageFor(count : 2)
//print(message)  // Customer, you are customer number 2



// 길이에 대하여 인치 단위의 측정값을 매개변수로 받음 → 이 값을 야드, 센치미터, 미터로 변환 후 하나의 튜플 인스턴스에 넣어 반환하는 함수
func sizeConverter(_ length: Float) -> (yards : Float, centimeters : Float, meters: Float){
    let yards = length * 0.0277778
    let centimeters = length * 2.54
    let meters = length * 0.0254
    return (yards, centimeters, meters)
}

let lengthTuple = sizeConverter(20)

print(lengthTuple.yards)        // 0.555556
print(lengthTuple.centimeters)  // 50.8
print(lengthTuple.meters)       // 0.508
