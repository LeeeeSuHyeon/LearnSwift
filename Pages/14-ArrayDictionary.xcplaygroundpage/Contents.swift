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

for object in mixedArray {
    print(object as! Int * 10)
}

/*
 10
 20
 450
 Could not cast value of type 'Swift.String' (0x1f6248898) to 'Swift.Int' (0x1f624aa48).
 */
