class BankAccount {
    var accountBalance : Float = 0  // 계좌에 남은 잔고
    var accountNumber : Int = 0     // 계좌 번호
    var fees : Float = 25.00        // 은행 수수료
    
    // 초기화
    init(number : Int, balance : Float){
        accountNumber = number
        accountBalance = balance
    }

    // 인스턴스 메서드
    func displayBalance(){
        print("Number \(accountNumber)")
        print("Current balance is \(accountBalance)")
    }
}


class SavingsAccount : BankAccount{
    var interestRate : Float = 0.0
    
    // 초기화
    init(number : Int, balance : Float, rate : Float){
        interestRate = rate
        super.init(number : number, balance : balance)
    }
    
    func calculateInterest() -> Float{
        interestRate * accountBalance
    }
    
    //    override func displayBalance(){
    //        print("Number \(accountNumber)")
    //        print("Current balance is \(accountBalance)")
    //        print("Prevailing interest rate is \(interestRate)")
    //    }
    override func displayBalance(){
        super.displayBalance()
        print("Prevailing interest rate is \(interestRate)")
    }
}
    
let savings1 = SavingsAccount(number: 12311, balance: 600.00, rate: 0.07)

print(savings1.calculateInterest()) // 42.0
savings1.displayBalance()

/*
 Number 12311
 Current balance is 600.0
 Prevailing interest rate is 0.07
 */




// extension
extension Double{
    var squared : Double {
        self * self
    }
    
    var cubed : Double {
        self * self * self
    }
}

let myValue : Double = 3.0
print(myValue.squared)  // 9.0
print(myValue.cubed)    // 27.0
print(3.5.cubed)        // 42.875
print(2.0.squared)      // 4.0
