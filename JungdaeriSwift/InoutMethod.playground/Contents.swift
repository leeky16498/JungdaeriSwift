import UIKit


func sayHi(name: String) {
    print(name)
}

func sayName(_ name : String) {
    print(name)
}

func sayName1(_ name : inout String) {
    name += "개발하는"
    print(name)
}

sayHi(name: "이경윤")
sayName("이경윤 파라미터 생략")

var name = "Lee"

//inout 은 변수를 파라미터로 설정할 수 있다. 그 얘기는 마음대로 파라미터를 변경하기가 가능하다는 것이다.
//그래서 변동이 필요한 파라미터는 함수 밖에서 변수로 선언해주고 inout으로 가져다가 활용하면 된다.

sayName1(&name)
