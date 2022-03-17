import UIKit

//제네릭 : 어떠한 자료형이라도 받을 수 있다.

struct MyArray<SomeElement> {
    
    var elements : [SomeElement] = [SomeElement]()
    
    init(elements : [SomeElement]) {
        self.elements = elements
    }
    
}

struct Friend {
    
    var name : String
}

struct Coder {
    var name : String
}


var mySomeArray = MyArray(elements: [1, 2, 3])
print(mySomeArray)

var myStringArray = MyArray(elements: ["가", "나", "다"])
print(myStringArray)

let friend_1 = Friend(name: "안녕1")
let friend_2 = Friend(name: "안녕2")
let friend_3 = Friend(name: "안녕3")

var myFriendArray = MyArray(elements: [friend_3, friend_2, friend_1])
print(myFriendArray)

//제네릭은 다음과 같이 모든 타입의 변수를 받을 수 있다. 따라서 지금처럼 제네릭을 선언해주게 되면, 모든 자료형을 담아서 작업을 할 수 있다.
