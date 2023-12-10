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



//// 길이에 대하여 인치 단위의 측정값을 매개변수로 받음 → 이 값을 야드, 센치미터, 미터로 변환 후 하나의 튜플 인스턴스에 넣어 반환하는 함수
//func sizeConverter(_ length: Float) -> (yards : Float, centimeters : Float, meters: Float){
//    let yards = length * 0.0277778
//    let centimeters = length * 2.54
//    let meters = length * 0.0254
//    return (yards, centimeters, meters)
//}
//
//let lengthTuple = sizeConverter(20)
//
//print(lengthTuple.yards)        // 0.555556
//print(lengthTuple.centimeters)  // 50.8
//print(lengthTuple.meters)       // 0.508


////문자열 값들을 매개변수로 받아 콘솔 패널에 출력하는 함수
//func displayStrings(_ strings: String...){
//    for string in strings {
//        print(string)
//    }
//}
//
//displayStrings("one","two","three","four")



//// 인치 단위의 길이와 너비를 매개변수로 전달받아 각각의 값을 센티미터로 변환 후 면적 계산 반환 함수
//func calcuateArea(length : Float, width: Float) ->  Float{
//    var length = length
//    var width = width
//    
//    length = length * 2.54
//    width = width * 2.54
//    return length * width
//}
//
//print(calcuateArea(length: 10, width: 20))  // 1290.32


//// 입출력 매개변수 사용 전
//var myValue = 10
//
//func doubleValue(_ value : Int) -> Int{
//    var value = value
//    value += value
//    return value
//}
//print("Before function call myValue = \(myValue)")              // 10
//print("doubleValue call returns = \(doubleValue(myValue))")     // 20
//print("After function call myValue = \(myValue)")               // 10


//// 입출력 매개변수 사용 후
//var myValue = 10
//
//func doubleValue(_ value : inout Int) -> Int{
//    value += value
//    return value
//}
//print("Before function call myValue = \(myValue)")              // 10
//print("doubleValue call returns = \(doubleValue(&myValue))")    // 20
//print("After function call myValue = \(myValue)")               // 20


//// 매개변수인 함수
//func inchesToFeet(_ inches: Float) -> Float{
//    inches * 0.0833333
//}
//
//let toFeet = inchesToFeet
//print(toFeet(10))   // 0.833333



// 매개변수로 함수 할당
func inchesToFeet(_ inches: Float) -> Float{
    inches * 0.0833333
}

func inchesToYards(_ inches : Float) -> Float{
    inches * 0.0277778
}

let toFeet = inchesToFeet
let toYards = inchesToYards


func outputConversion(_ converterFunc : (Float) -> Float, value : Float){
    let result = converterFunc(value)
    print("Result of conversion is \(result)")
}

outputConversion(toFeet, value: 10)     // Result of conversion is 0.833333
outputConversion(toYards, value: 10)    // Result of conversion is 0.277778
