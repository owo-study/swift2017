import Foundation

//// 함수
// 구성요소 : 이름, 파라미터, 리턴값
// 리턴값은 [ -> 반환타입 ], 반환값이 없는 경우 생략 가능
func function1(){
    print("function1에서 수행")
}
function1()

// 파라미터 : 내부파라미터(함수 내부에서 사용하는 이름), 외부파라미터
// 외부 파라미터 이름 - 함수 호출시 사용하는 이름
// - 별도로 작성하지 않으면 동일한 이름 사용, 생략하고 싶을 때는 _ 사용
func sayHello(ps: String){
    print(ps)
}
sayHello(ps: "안녕")

func sayHello2(person ps: String){
    print(ps)
}
sayHello2(person: "세상")

func sayHello3(_ ps: String){
    print(ps)
}
sayHello3("세상")

// - 가변 길이 파라미터도 가능 (...) : 내부에서는 배열로 인식
func function2(_ params: Int...){
    for param in params {
        print(param)
    }
}
function2(1,3,5,7,9)

// 파라미터의 기본값을 성정이 가능함 (호출시 생략이 가능해짐)
func function3(_ strParam: String, _ intParam: Int=1 ){
    print(intParam, strParam)
}
function3("Hello", 5)
function3("World")
// - 파라미터는 기본적으로 상수로 인식 (inout 키워드)
// inout파라미터의 경우 &붙여서 호출
func function4(_ param: inout Int){
    param = 10
}
var value: Int = 5
function4(&value) // call(pass) by reference
print(value)

// 옵셔널 문제 (파라미터, 반환값)
