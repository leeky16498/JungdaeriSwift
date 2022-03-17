import UIKit

//딕셔너리는 사물함을 여는 거라고 생각하면 좋다.
//키, 와 값으로 구성되어 있다.


var myFriends = ["Bestfriend" : "Lee", "Lee" : "Siena"]

let myBestFrield = myFriends["Bestfriend"]
print(myBestFrield)

//출력될 떄 옵셔널 밸류로 뱉어내지게 된다. 그래서 언래핑 해줘야 함.

let mySecondFriend = myFriends["Kim", default: "Hiroo"]
print(mySecondFriend)

//다음과 같이 없는 값일 경우 디폴트 값을 지정해주는 것도 가능하다.
 
myFriends["Lee"] = "Siena2"
print(myFriends["Lee"])

//딕셔너리 값에 대해 자체적으로 수정도 가능하다.

myFriends.updateValue("Partner", forKey: "Lee")
print(myFriends.updateValue("Partner", forKey: "Lee")) // updateValue 모디파이어를 통해서 키에 해당하는 값을 리뉴얼 할 수도 있다.

let myEmptyDictionary : [String: Int] = Dictionary<String, Int>()
//다음과 같이 비어있는 딕셔너리를 선언해줄수도 있다.
//우측에 있는 선언 방식을 잘 기억해두자.
