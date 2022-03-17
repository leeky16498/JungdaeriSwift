import UIKit

protocol Naming {
    func getName() -> String
}

protocol Aging {
    func getAge() -> Int
}

typealias Friendable = Naming & Aging

struct Lee : Friendable {
    func getAge() -> Int {
        <#code#>
    }
    
    func getName() -> String {
        <#code#>
    }
}
//새로운 별칭을 지어서 만들어가지고 적용해줄 수 있다.

typealias FriendName = String

var friendName : FriendName = "Lee"
print(friendName)

typealias StringBlock = (String) -> Void

func sayHello(completion: (String)-> Void) {
    print("하이루요")
}

//위의 함수는 아래와 동일하다.

func sayHello11(completion: StringBlock) {
    print("하이루요")
}
//별명을 지어주면 그거대로 아이덴티티를 증명하는게 가능하다는 것이다.
