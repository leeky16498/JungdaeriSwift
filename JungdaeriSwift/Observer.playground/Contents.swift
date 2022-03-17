import UIKit

var myAge = 0 {
    willSet {
        print("값이 설정될 예정이다. \(myAge)")
    }
    didSet {
        print("값이 설정되었다. \(myAge)")
    }
}

myAge = 10
 // 옵저버는 변수가 변화되는 순간에 실행되는 클로저이다.
