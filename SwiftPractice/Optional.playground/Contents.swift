import UIKit

// Optional

// 값을 반환할 떄 오류가 발생할 가능성이 있는 값은 옵셔널 타입이라는 객체로 감싸서 반환합니다.
// 변수 또는 상수에 아무런 값이 할당되지 않는 상황을 안전하게 처리하기 위한 방법을 제공


// forced unwrapping 강제 언래핑


// x가 nil이 아니면 강제 언래핑을 해주고 아니면 String값으로 nil을 반환해주는 코드
var x: Int?
x = 10
if x != nil {
    print(x!)
} else {
    print("nil")
}

var x1: Int?
if x1 != nil {
    print(x1!)
} else {
    print("nil")
}

// Optinal Binding
// 옵셔널에 할당된 값을 임시 변수 또는 상수에 할당

/*
if let constanatname = OptionalName {
    // 옵셔널 변수가 값이 있다면 언래핑해서 일반 상수 constantname에 대입하고 if문을 실행
    // 값이 없다면 if문의 조건이 거짓이 되어 if문을 실행하지 않는다.
}

if var variablename = OptionalName {
    // 동일
}
*/

// 옵셔널을 사용하는 이유 : 옵셔널 타입만이 값을 갖지 않는다는 의미의 nil값을 가질 수 있다.

// nil : 값이 없는 상태를 의미


