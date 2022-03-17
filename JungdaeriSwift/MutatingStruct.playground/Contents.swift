import UIKit

class Friend {
    
    var name : String
    
    func changeName(name : String) {
        self.name = name
        print(name)
    }
    
    init(_ name : String) {
        self.name = name
    }
}

var myFriend = Friend("Lee")

myFriend.changeName(name: "Kyungyun")
//클래스는 생성자를 통해서 다음과 같이 호출한 후 클래스 내의 변수를 자유롭게 변경이 가능하다.

struct BestFriend {
    
    var name : String
    
    mutating func changeName() {
        self.name = "호호호호"
        print(name)
    }
    
    init(_ name : String) {
        self.name = name
    }
}
//스트럭트는 값이기 때문에, 안에 있는 변수를 변경할 수가 없다. 하지만 변경이 필요한 경우 뮤테이팅을 통해서 변경을 해줄 수 있다.

var myBestfriend = BestFriend("LeeKyungyun")
print(myBestfriend)
myBestfriend.changeName()
print(myBestfriend)
//뮤테이팅을 해주게 되면 스트럭트 안에서도 값을 변경해줄 수 있다.
