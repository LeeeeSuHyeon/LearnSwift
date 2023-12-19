/*
 - 이 메서드는 여러 원인(네트워크 연결 x, 네트워크 속도 느림, 전송할 파일 찾지 못함)으로 인해 파일 전송에 실패 가능성 있음
 - → 이러한 에러는 다음과 같이 Error 프로토콜을 따르는 열거형 내에서 표현되도록 함
 */
// // 에러 타입 선언
//enum FileTransferError : Error {
//    case noConnection
//    case lowBandwith
//    case fileNotFound
//}

// 에러 던지기
//func transferFile() throws -> Bool {
//    
//}

// 상태 값으로 제공되는 상수들을 선언 후, 메서드에 대한 guard 동작과 throw 동작 구현
let connectionOK = true
let connectionSpeed = 30.0
let fileFound = false

enum FileTransferError : Error {
    case noConnection
    case lowBandwith
    case fileNotFound
}

func fileTransfer() throws {
    
    guard connectionOK else {
        throw FileTransferError.noConnection
    }
    
    guard connectionSpeed > 30 else {
        throw FileTransferError.lowBandwith
    }
    
    guard fileFound else {
        throw FileTransferError.fileNotFound
    }
}


// sendFile 메서드에서 제어권 반환 전 임시 파일을 지워할 경우 → defer 구문 사용
func sendFile() -> String {
    
    defer {
        removeTmpFiles()
        closeConnection()
    }
    
    do {
        try fileTransfer()
    } catch FileTransferError.noConnection {
        return "No Network Connection"
    } catch FileTransferError.lowBandwith {
        return "File Trnasfer Speed too Low"
    } catch FileTransferError.fileNotFound {
        return "File Not Found"
    } catch {
        return "UnKnown Error"
    }
    
    return "Succeccsul transfer"
}

do {
    try filemgr.createDirectory(atPath: newDir, withIntermediateDirectories : true attributes: nil)
} catch let error {
    print("Error : \(error.localizedDesciption)")
}



// try! 구문 사용 → do-catch 구문 내에서 메서드가 호출되도록 감싸지 않아도 스로잉 메서드가 강제 실행
try! fileTransfer
