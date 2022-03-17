import UIKit

struct Friend {
    
    var age : Int
    var name : String
    
    func sayHello() -> String {
        print("함수 호출 완료")
        return "함수 호출 삽가능"
    }
    
}
//스트럭트는 생성자가 없어도 생성이 가능하다. 그리고 스트럭트도 메소드를 가질 수 있다.
