import UIKit

//protocol이란 뜻은 규약, 약속이다.

protocol Naming {
    var name : String {get set}
    //우리는 이런 변수를 가지고 있을 겁니다! 라고 약속을 하는 것이다.
    
    func getName() -> String
    
    //우리는 이런 메소드를 가지고 있을 것이다.
}

struct Friend : Naming { // 네이밍이란 프로토콜을 상속 ? 약속을 준수하겠습니다. 그러면 프로토콜 안의 모든 항목들을 상속받아서 사용해야 한다.
    
    var name: String
    
    func getName() -> String {
        return "hi"
    }
}

let friend = Friend(name: "hi")
friend.getName()


// 프로토콜의 상속에 대해서도 알아보자

protocol Aging {
    var age : Int {get set}
}

protocol User : Naming, Aging {
    
}

struct Hifriend : User {
    var name: String
    
    func getName() -> String {
        <#code#>
    }
    
    var age: Int
    
}
//모든 프로토콜을 상속받는 새로운 프로토콜을 만들어서 이를 다시 클래스에 상속받으면 그 안에 있는 모든 항목들을 쓸 수 있게 된다./

//프로토콜의 확장

protocol Naming1 {
    var lastName : String {get set}
    var firstName : String{get set}
    func getName() -> String
}

extension Naming1 {
    func getFullname() -> String {
        return self.lastName + "" + self.firstName
    }
}

struct Friend11: Naming1 {
    var lastName: String
    
    var firstName: String
    
    func getName() -> String {
        return self.lastName
    }
}

let friend11 = Friend11(lastName: "Lee", firstName: "Hi")
friend11.getFullname() // 프로토콜에서는 원래라면 함수의 로직을 구성해서 선언이 불가하다
//하지만 프로토콜에서의 로직을 구성할때는 익스텐션을 통해서 로직을 구성해 줄 수 있다.


//프로토콜 associatetype 에 대해서 알아보자

protocol PetHaving {
    associatedtype T // 얘를 통해서 제네릭을 사용할 수 있다.
    var pets: [T] {get set}
    mutating func gotNewPet(_ newPet: T)
}

extension PetHaving {
    mutating func gotNewPet(_ newPet: T) {
        self.pets.append(newPet)
    }
}

enum Animal {
    case cat, dog, bird
}

struct PetFriend : PetHaving {
    var pets: [Animal] = []
}

struct PetFamily : PetHaving {
    var pets: [String] = []
}

var myfriend = PetFriend()

myfriend.gotNewPet(Animal.bird)
myfriend.gotNewPet(Animal.cat)
myfriend.gotNewPet(Animal.dog)
myfriend.pets
