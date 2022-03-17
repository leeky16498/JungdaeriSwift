import UIKit

enum MismatchError : Error {
    case nameMismatch
    case numberMisMatch
}

//에러를 던지는 메소드
func guessMyName(name input : String) throws {
    //리턴 값에 throws를 써주게 되면 에러를 던져주는 메소드라는 것이다.
    print("함수가 호출되었습니다.")
    
    if input != "Lee" {
        print("Miss")
        throw MismatchError.nameMismatch
        //에러를 던져주고 함수를 리턴하게 된다.(끝내버린다)
    }
    print("Right!")
}

//try? guessMyName(name: "Hi")

do {
    try guessMyName(name: "Lee1")
} catch { // 여기에서는 에러가 들어오게 된다.
    print("\(error)") // 위처럼 하게 되면 nameMismatch가 잡아들어오게 된다.
}


try? guessMyName(name: "Lee1")
 //에러가 나와도 별도의 처리를 하지 않겠다.

//try! guessMyName(name: "Lee1")
//이런식으로 해주면 에러가 나오면 큰일이 난다. 통상 써주지 않는다.


func guess1mynumber(name input : String) throws -> String {
    if input != "Lee" {
        print("miss!")
        throw MismatchError.nameMismatch
    }
    print("good!")
    return "good"
}

do {
    let receivedValue = try guess1mynumber(name: "Lee2")
    print(receivedValue)
} catch {
    print("\(error)")
}

//다음과 같이 에러를 리턴한다고 명시하고 정상적인 함후로 갔을 경우의 리턴값을 리턴해줄수도 있다.
