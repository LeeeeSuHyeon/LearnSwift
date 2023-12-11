
class BankAccount {
    var accountBalance : Float = 0  // 계좌에 남은 잔고
    var accountNumber : Int = 0     // 계좌 번호
    var fees : Float : 25.00        // 은행 수수료
    
    var balanceLessFees : Float{
        get{
            return accountBalance - fees
        }
        set(newBalance){
            accountBalance = newBalance - fees
        }
    }
    
    // 초기화
    init(number : Int, balance : Float){
        accountNumber = number
        accountBalance = balance
    }
    
    // 소멸자
    deinit{
        // 필요한 작업 수행
    }
    
    // 인스턴스 메서드
    func displayBalance(){
        print("Number \(accountNumber)")
        print("Current balance is \(accountBalance)")
    }
    
    
    // 타입 메서드
//    class func getMaxBalance(){
//        return 100000.00
//    }
    
}


// 인스턴스 생성
var account1 = BankAccount(number : 12312312, balance : 400.54)

// 인스턴스 변수 값 접근
var balance1 = account1.accountBalance

// 프로퍼티 값 설정
account1.accountBalance = 6789.98

// 메서드 호출
account1.displayBalance()


// 타입 메서드 호출 시 클래스 인스턴스가 아니라 클래스를 호출해야 함
var maxAllowed = BankAccount.getMaxBalance()


// 현재의 잔액에서 수수료를 뺀 값을 얻는 코드와 새로운 값을 설정하는 코드
var balance2 = account1.balaceLessFees
account2.balaceLessFees = 12123.12
