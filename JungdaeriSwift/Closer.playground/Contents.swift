import UIKit

 // string을 반환하는 클로저

var myName : String {
    return "경윤이"
}

print(myName)

//클로저 정의
let myRealName : (String) -> String = { (name: String) -> String in
    return "develoer \(name)"
//상수는 매개변수로 문자열을 받아서 문자열을 리턴하는 클로저이다.
}

print(myRealName("Lee"))
//매개변수를 받아서 기능을 수행하는 메소드이다.

let myRealNameLogic : (String) -> Void = {(name: String) in
    return print("Real ios developer Lee")
}

myRealNameLogic("Lee")


func sayHi(completion : () -> Void) {
    print("the function is called")
    sleep(2)
    completion()
}

sayHi(completion: {
    print("2초가 지났습니다.")
})
//매개변수로서의 클로저, 결과적으로 함수속에 함수를 수행해주는 것이다.

func sayNo(completion: (String) -> ()) {
    print("함수 호출 완료")
    sleep(2)
    completion("컴플리션 호출 완료")
}


sayNo { string in
    print(string)
}

func sayNoNew(completion : (String, String) -> Void) {
    print("안녕 못합니다 호출 완료")
    completion("어허", "어허1")
} // 클로저의 파라미터가 튜플값으로 들어가게 되면 다음과 같이 매개변수에서 위와 같은 행동을 취하게 된다.

sayNoNew { name1, name2 in
    print(name1)
    print(name2)
}

func sayHiOptional(completion : (() -> Void)? = nil) {
    print("안녕 옵셔널 호출 완료")
    completion?()
}

sayHiOptional()
 // 클로저 자체를 옵셔널로 선언해서 클로저를 실행하지 않을수도 있다. 이 때 기본값을 nil로 주면 된다.

sayHiOptional {
    print("옵셔널 클로저를 받았노라")
}
//다음과 같이 클로저를 옵셔널을 해제하여 받을수도 있다.

func sayNono(completion: (String, String) -> ()) {
    print("세이노노")
    completion("하이1", "하이2")
}

sayNono { _, name2 in
    print(name2)
}

var myNumbers : [Int] = [1, 2, 3]
var transformedNumbers = myNumbers
    .map { value in
        return "value"
    }
print(transformedNumbers)
 // 클로저를 보게되면 파라미터로 정수를 받아서 새로운 타입을 리턴해 준다고 나와있다.
