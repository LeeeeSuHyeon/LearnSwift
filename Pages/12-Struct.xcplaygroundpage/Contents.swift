struct SampleStruct {
    var name : String
    init(name : String){
        self.name = name
    }
}

let myStruct1 = SampleStruct(name: "Mark")
var myStruct2 = myStruct1
myStruct2.name = "David"

print(myStruct1.name) // Mark
print(myStruct2.name) // David



class SampleClass {
    var name : String
    init(name : String){
        self.name = name
    }
}


let myClass1 = SampleClass(name: "Mark")
var myClass2 = myClass1
myClass2.name = "David"

print(myClass1.name) // David
print(myClass2.name) // David
