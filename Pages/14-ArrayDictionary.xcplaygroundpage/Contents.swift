// 가변형
var treeArray = ["Pine", "Oak", "Yew"]

// 불변형
//let treeArray = ["Pine", "Oak", "Yew"]

//var treeArray : [String] = ["Pine", "Oak", "Yew"]

var priceArray = [Float]()

var nameArray = [String](repeating: "My String", count : 10)
//print(nameArray) // ["My String", "My String", "My String", "My String", "My String", "My String", "My String", "My String", "My String", "My String"]

let firstArray = ["red", "blue", "green"]
let secondArray = ["Indigo", "Violet"]

let thirdArray = firstArray + secondArray
//print(thirdArray)   // ["red", "blue", "green", "Indigo", "Violet"]



// shuffled() 메서드 : 항목의 순서가 무작위로 섞인 새로운 버전의 배열 반환
let suffledTrees = treeArray.shuffled()

// randomElement() : 배열의 항목 무작위로 선택하여 접근
let randomTree = treeArray.randomElement()


treeArray.append("Redwood")
treeArray += ["Redwood"]
treeArray += ["Redwood", "Mapple","Birch"]

// 항목 삽입
treeArray.insert("Mapple", at: 0)

// 항목 삭제
treeArray.remove(at: 2)

// 마지막 항목 삭제
treeArray.removeLast()


// 배열 반복
for tree in treeArray {
    print(tree)
}


// 다양한 타입의 배열
//let mixedArray : [Any] = [1, 2, 45, "Hello"]
//
//for object in mixedArray {
//    print(object * 10)    // // error: binary operator '*' cannot be applied to operands of type 'Any' and 'Int'
//}

// 다운캐스팅
let mixedArray : [Any] = [1, 2, 45, "Hello"]

//for object in mixedArray {
//    print(object as! Int * 10)
//}

/*
 10
 20
 450
 Could not cast value of type 'Swift.String' (0x1f6248898) to 'Swift.Int' (0x1f624aa48).
 */

// ========================================================================
// Dictionary

//var bookDict = ["100-432112" : "Wind in the Willows",
//                "200-532874" : "Tale of Two Cities",
//                "202-546549" : "Sense and Sensibility",
//                "104-109834" : "Shutter Island"]


//var bookDict : [String : String] =
//                ["100-432112" : "Wind in the Willows",
//                "200-532874" : "Tale of Two Cities",
//                "202-546549" : "Sense and Sensibility",
//                "104-109834" : "Shutter Island"]


var myDictionary = [Int : String]()


let keys = ["100-432112", "200-532874", "202-546549", "104-109834" ]
let values = ["Wind in the Willows", "Tale of Two Cities", "Sense and Sensibility", "Shutter Island"]

var bookDict = Dictionary(uniqueKeysWithValues: zip(keys, values))

var bookDict2 = Dictionary(uniqueKeysWithValues: zip(1..., values))
var bookDict3 = [1 : "Wind in the Willows",
                 2 : "Tale of Two Cities",
                 3 : "Sense and Sensibility",
                 4 : "Shutter Island"]

// 딕셔너리 항목 개수
print(bookDict2.count)


print(bookDict["200-532874"])   // Optional("Tale of Two Cities")

// 지정된 키에 해당하는 값이 없는 경우 사용될 디폴트 값 선언
print(bookDict["999-123123", default: "Book not found"])    // Book not found
print(bookDict["200-532874", default: "Book not found"])   // Tale of Two Cities


// 항목 갱신하기
bookDict["200-532874"] = "Sense and Sensibility"
print(bookDict["200-532874", default: "Book not found"])   // Sense and Sensibility


// 변경될 값과 해당 키를 전달하여 update(forKey: ) 메서드 호출
bookDict.updateValue("The Runis", forKey: "200-532874")
print(bookDict["200-532874", default: "Book not found"])   // The Runis


// 항목 추가
bookDict["300-898871"] = "The Overlook"

// - 제거
// - 해당 항목을 nil로 설정하거나 딕셔너리 인스턴스의 remove(forKey:) 메서드 호출
bookDict["300-898871"] = nil
bookDict.removeValue(forKey: "300-898871")



// 책 딕셔너리에 있는 모든 항목을 가져다가 각각의 키, 값을 출력
for (bookId, title) in bookDict {
    print("Book ID : \(bookId) Title : \(title)")
}

/*
 Book ID : 104-109834 Title : Shutter Island
 Book ID : 100-432112 Title : Wind in the Willows
 Book ID : 200-532874 Title : The Runis
 Book ID : 202-546549 Title : Sense and Sensibility
 */
