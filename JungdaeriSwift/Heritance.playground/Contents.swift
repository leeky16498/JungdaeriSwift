import UIKit
//상속에 대한 강의

class Friend  {
    
    var name : String
    
    init(name: String) {
        self.name = name
    }
    
    func sayHi()  {
        print("안녕 난 \(self.name)란다")
    }
    
}

class BestFrield : Friend {
    
    override init(name: String) {
        //override로 부모의 메소드를 가져왔다.
        super.init(name: "이럴수가" + name) // super로 부모의 생성자를 함께 사용하는 경우에 다음과 같이 수행한다.
    }
    
    override func sayHi() {
        super.sayHi() // 동일한 함수명을 사용할건데 super 라는 어두를 통해서 부모 클래스의 출처를 명시해준다.
    }
    
}

let myFriend = Friend(name: "경윤이")
let myBestFrield = BestFrield(name: "짱천재")

myFriend.sayHi()
myBestFrield.sayHi()
