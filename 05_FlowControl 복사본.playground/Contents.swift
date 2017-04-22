import Foundation

//// 반목문과 조건문
// for문
// 주의 : c 스타일 for문[ =for(초기값, 조건식, 증감식){..} ] 은 swift3부터 사용 불가능
// for..in을 사용한다 (범위 연산자, 배열/Set을 사용)
for i in 0..<5 {
    print(i)
}
// 딕셔너리나 배열
let arr = ["딕", "셔", "너", "리"]
for value in arr {
    print(value)
}
for (key, value) in [10:"딕",20:"셔",40:"너",80:"리"] {
    print(value, key)
}
// (문자열 뷰?)
let str = "Hello"
for char in str.characters {
    print(char)
}
// while문
// ()는 생략가능, {}는 생략 절대 안됨
var i = 0;
while i<100 {
    i+=10
    print(i)
}
// repeat-while문(=do-while문)
repeat{
    i -= 5
    print(i)
    if i<0 { break }
} while true

// if문
// ()는 생략가능, {}는 생략 절대 안됨
if 1 == 10 { print("틀림") }
// 조건절이 무조건 Bool 타입의 결과가 나와야 한다

// if let 바인딩
// 유효한 값 판단(nil여부 판단)
// if로 버전 검사 #available(플랫폼 버전)

// early exit
// guard문
// if와 guard의 차이점
for i in 0..<10 {
    guard i<=2 else { break }
    // if i>2 { break } 와 같은 의미
}


// switch문
// 다른 언어와 차이 : break문을 작성하지 않는다(기본 해당 케이스만 수행)
// fallthrough 키워드 : 다음 케이스도 수행하고 싶을 때
// 모든 케이스를 작성해줘야 한다. default 생략 불가능
// case에 범위 연산자로 범위 지정 가능
// 조건 변수에는 튜플, 딕셔너리 가능?
// 밸류 바인딩
// 바인딩과 조건 where
let 숫자 = 10
switch 숫자 {
case 1...9:
    print(1)
case 10:
    print(10)
    fallthrough
case 11:
    print(11)
default:
    print("??")
}
