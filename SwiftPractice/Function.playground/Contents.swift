import UIKit

/*
 함수
 특정 작업을 수행하는 코드 블록
 수행하기 위하여 데이터가 제공될 수 있으며, 함수를 호출한 코드에 작업한 결과를 반환할 수도 있음
 매개변수(parameter,인자)와 인수(argument)는 차이점이 있음
 함수 정의부의 값을 매개변수, 호출시의 값은 아구먼트라고 부름
 */

// 함수를 선언하는 방법

/*
 func <함수명> (<매개변수 이름>: <매개변수 타입>,...) -> <반환값 타입> {
    // 함수 코드
 }
 */

func add(x: Int, y: Int) -> Int {
    return(x+y)
}
add(x: 10, y: 10) // 20 

/*
 func add(first x: Int, second y: Int) -> Int {
     return(x+y)
 }


 func add(_ x: Int, _ y: Int) -> Int {
     return(x+y)
 }


 func add(_ x: Int, with y: Int) -> Int {
     return(x+y)
 }



 */
