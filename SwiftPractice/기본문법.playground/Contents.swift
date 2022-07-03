import UIKit

// let : 한번 할당되면 이후에 변경이 불가능
let sample1: Int

// var : 값 변경이 가능, 타입을 명시하지 않으면 타입 추론으로 타입이 결정됨
var sample2 = 2

let myTuple = (1, 2.2, "Hi") // 여러개의 값을 한번에 묶는것을 튜플이라 함

// 형 변환 as! as?로 dowincasting

/*
 부모 인스턴스 as! 자식클래스 // downcasting 일반 타입으로 반환 , 다운 캐스팅이 반드시 성공할 것이라는 확신이 있을 때 사용
 부모 인스턴스 as? 자식클래스 // downcasting 옵셔널 타입으로 반환, 확신이 없을 경우에 사용, 보통 이 방법으로 사용
 */

// 형 변환 as로 upcasting

/*
 상속 관계가 있는 클래스들끼리만 타입 캐스팅이 가능하다.
 자식을 부모로 캐스팅하는 것은 문젝가 없다.
 
 as연산자를 이용한 타입 변환
 자식 인스턴스 as 부모클래스 // upcasting 안전한 캐스팅, 자식이 추상화 됨.
 upcasting은 객체를 부모 클래스의 객체로 형 변환
 
 let myButton: UIButton = UIButton()
 let myControl: myButton as UIControl // 자식인스턴스 as 부모 클래스
 자식인스턴스인 myButton을 부모 클래스형으로 변환
 */


// 타입 검사 is


// Any와 AnyObject
/*
 AnyObject
 - 범용 타입
 - 상속 관계가 아니라도 타입 캐스팅 가능한 타입
 - 어떤 클래스의 객체도 저장 가능
 - 클래스만 허용되며 구조체나 열거형은 허용하지 않음
 
 Any
 - 클래스, 구조체, 열거형, 함수타입도 가능
 */


// Nil-Coalescing Operator Nil합병연산자
// 옵셔널변수 ?? nil 일떄 할당되는 값
// 옵셔널 변수의 값이 nil이면 ?? 다음 값으로 할당이 된다.

let defaultColor = "White"
var userDefinedColor: String? // defaults to nil

var myColor = userDefinedColor ?? defaultColor // nul이므로 defaultColor인 White로 할당됨

print(myColor) // White
userDefinedColor = "Red"
myColor = userDefinedColor ?? defaultColor // nil이 아니므로 원래 값인 red가 할당됨
print(myColor) // Red * optional(Red)가 아님


// for-in 문

/*
 for-in 반복문은 컬렉션 또는 숫자 범위 내에 있는 목들을 반복
 '상수명' 은 반복문이 돌면서 컬렉션 또는 범위에서 가져온 항목을 담게 될 상수
 
 for 상수명 in 컬렉션 또는 범위 {
    // 실행될 코드
 }
 */

for i in 1...5 {
    print(i)
}


// 배열의 항목 접근
let names = ["A", "B", "C", "D"]
for name in names {
    print(name)
}

// Dictionary의 항목 접근
let numberOFLegs = ["Spider": 8, "ant": 6, "cat": 4]
// dictionary는 키: 밸류 형식의 배열

for (animalName, legCount) in numberOFLegs {
    print("\(animalName)s have \(legCount) legs")
}

// while 반복문
/*
 for 반복문은 몇 번 정도 반복해야 할지를 이미 아는 경우에 사용하기 적합
 어떠한 조건이 되기 저에 대체 몇 번 정도 반복해야 할지를 알 수는 없지만 그 조건을 만족할 때까지는 반복해야 하는 경우 while 반복문 사용
 기본적으로 while 반복문은 지정된 조건을 만족할 때까지 작업을 반복

 while 조건식 {
 // 스위프트 코드가 위치함
 }
 - 위의 코드에서 '조건식'은 true 또는 false을 반환하게 되는 표현식이며, 주석 부분(// 스위프트 코드가 위치함)은 조건식이 참인 동안에 실행될 코드를 나타냄
 */

var myCount = 0
while myCount < 100 {
    myCount+=1
}
print(myCount) // 100까지 반복

// repeat while 반복문
/*
do while 반복문을 대신 하는 문
적어도 한 번은 실행
 
repeat {
  //
 } while 조건식
 
*/

var i = 10
repeat {
    i=i-1
    print(i)
} while(i>0)


// guard 문 (조건이 거짓이면 실행)

/*
 언래핑 된 변수는 guard문 밖에 있는 코드가 사용할 수 있다.
 if문을 사용하면 언래핑된 변수는 그렇게 못한다.
 
 */

func mutiplyByTen(value: Int?) {
    
guard let number = value, number < 10 else {
    print("수가 10보다 크다.")
    return
}
print(number*10) // 조건식이 참일 때 실행, 주의 number를 여기서도 사용 가능
}
mutiplyByTen(value: 3) // 30


// switch 문
/*
각각의 가능한 경우마다 case문이 필요하며, 해당하는 일치 값(match)을 다음에 쓴다.
각각의 case 문은 표현식을 처리한 결과와 동일한 데이터 타입이어야 한다.
case 문 다음에는 해당 case 문과 일치했을 때 실행되는 스위프트 구문을 쓴다.
마지막 default 문은 표현식과 일치하는 case 문이 없을 경우를 위한 것이다.
 break가 기본적으로 들어가 있다.
 break 를 빠져 나오고 싶으면 fallthoroug를 추가해주면 된다.
*/

var temperature = 83

switch (temperature) {
case 0...49:
    print("cold")
case 50...79:
    print("warm")
case 80...110:
    print("Hot")
default:
    print("Temperature out of range")
}



