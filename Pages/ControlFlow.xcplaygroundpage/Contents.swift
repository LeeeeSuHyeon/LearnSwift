
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
