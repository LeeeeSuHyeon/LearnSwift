
func multiplyByTen(value : Int?){
    guard let number = value, number < 10 else{
        print("Number is too high")
        return
    }
    let result = number * 10
    print(result)
}

multiplyByTen(value: 5) // 50
multiplyByTen(value: 10) // Number is too high

/*
 - 옵셔널 형태의 정숫값을 매개변수로 받음
 - guard 구문은 값을 언래핑하기 위해 옵셔널 바인딩 사용, 10보다 작은지 판단
 - 값을 언래핑할 수 없거나, 언래핑 값이 9보다 큰 경우, else 절 실행
 - 10보다 작은 경우 guard 구문 이후 코드가 실행됨
 - **number 변수는 guard 구문 밖에서도 유효함**
 */



//let value = 2
//
//switch(value){
//    case 0, 1, 2:
//        print("zero, one or two")
//    case 3:
//        print("three")
//    case 4:
//        print("four")
//    default:
//        print("Integer out of range")
//}
//
//// zero, one or two


//let temperature = 83
//
//switch (temperature){
//    case 0...49 :
//        print("Cold")
//    case 50...79 :
//        print("Warm")
//    case 80...110 :
//        print("Hot")
//    default :
//        print("Temperature out of range")
//}
//// Hot
///
//let temperature = 54
//
//switch (temperature){
//    case 0...49 where temperature % 2 == 0 :
//        print("Cold and Even")
//    case 50...79 where temperature % 2 == 0:
//        print("Warm and Even")
//    case 80...110 where temperature % 2 == 0:
//        print("Hot and Even")
//    default :
//        print("Temperature out of range")
//}
//// Warm and Even
///


let temperature = 54

switch (temperature){
    case 0...49 where temperature % 2 == 0 :
        print("Cold and Even")
        fallthrough
    case 50...79 where temperature % 2 == 0:
        print("Warm and Even")
        fallthrough
    case 80...110 where temperature % 2 == 0:
        print("Hot and Even")
        fallthrough
    default :
        break   // break는 자주 사용되진 않지만 default 문에서 작업이 필요없으면 break 사용
}
/*
Warm and Even
Hot and Even 
*/

