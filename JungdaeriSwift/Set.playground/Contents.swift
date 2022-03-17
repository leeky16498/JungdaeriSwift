import UIKit


var myNumberSet : Set<Int> = Set<Int>()

myNumberSet.insert(1)
myNumberSet.insert(2)
myNumberSet.insert(3)

myNumberSet.count

var myFriends : Set<String> = ["철수", "영희", "민수"]
                               
myFriends.contains("철수")

if let indexToRemove = myFriends.firstIndex(of: "영희") {
    myFriends.remove(at: indexToRemove)
}
//셋에서는 영희를 지우고 싶으면 먼저 인덱스 체크를 해줘야 한다. 셋에서 가져오는 인덱스는 일반 배열과는 다르다.
//위에서 if let 을 해주는 이유는 해당하는 인덱스가 있을수도 없을수도 있기 때문이다. 그래서 영희를 다시 찾으면 그때의 인덱스는 그때그때 바로바로 달라지게 된다.

print(myFriends)
