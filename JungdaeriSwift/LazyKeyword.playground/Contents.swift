import UIKit

var greeting = "Hello, playground"

struct Pet {
    init() {
        print("펫 생성 완료동")
    }
}

struct Friend {
    
    var name : String
    
    lazy var pet : Pet = Pet()
    //이렇게 레이지를 선언해주게 되면은 변수를 사용하는 순간에 메모리에 올라가게 된다는 것이다.
    
    init(_ name: String) {
        self.name = name
        print("프렌드 생성완료!")
    }
}

var myFriend = Friend("경유닝")

myFriend.pet

//보게되면 펫이 늦게 올라갔기 때문에 뒤늦게 출력된 것을 볼 수 있다.

//레이지의 활용을 콤바인에서도 확인해보자.

import Combine
import SwiftUI

@Published var tempArray : [String] = []

lazy var arrayCount : AnyPublisher<Int, Never> = $tempArray
    .map {
        return $0.count
    }
    .eraseToAnyPublisher()

//이렇게 해주면 자료의 변환에 따라서 실시간으로 변수도 변하게 된다.₩
