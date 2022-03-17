import UIKit


struct YoutuberStruct {
    var name : String
    var number : Int
}

var devLee = YoutuberStruct(name: "경윤", number: 1)
print(devLee)

var devLeeClone = devLee

devLeeClone.name = "이경윤 클론"
print(devLeeClone)

//devLeeClone과 devLee는 서로 다른 친구이다.


class Youtuberclass {
    var name : String
    var number : Int
    
    init(_ name : String, _ number : Int) {
        //지금처럼 파라미터 앞에 언더바를 해주면 파라미터 명칭을 생략이 가능하다.
        self.name = name
        self.number = number
    }
}
//클래스는 생성자를 만들어주어야 한다. 쉽게 말하면 메모리에 올린다.라고 생각하면 된다.

var classLee = Youtuberclass("경윤이", 1)
var classLeeClone = classLee

classLeeClone.name = "이경윤 클론"

print(classLee.name)
print(classLeeClone.name)

//스트럭트는 서로 값을 넣었을 때 값이 양측이 달랐다. -> 다른 종이에 종이를 복사한 것이다. 그래서 복사종이를 훼손해도 영향이 없다. 얘는 그냥 다른 메모리의 다른애들을 각각 바라본다. 얘는 수정이 일어나도 서로 관련이 없다.

//클래스는 서로 값을 넣으면 양측이 같아진다. -> 클래스는 복사종이가 서로 연결이 되어있다. 머리가 2개가 되는 것이다. 그래서 선이 연결되어 있는 것이다. 얘는 참조하는 애들이 서로 하나의 같은애를 바라보고 있는 것이다.(구글닥스 같은 거라고 보면 된다.) 내가 수정하는 것은 다 연동이 된다.
