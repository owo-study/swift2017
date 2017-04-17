:octocat: [owo-study/swift2017](https://github.com/owo-study/swift2017)
### Swift 기초 스터디 (2017/가산)

## 제어문

### 반복문 for
- c언어 스타일의 for(초기값;조건식;증감식) 형식은 swift3.x에서 삭제됨
- for..in 을 사용

```swift
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
```

### 반복문 while, repeat-while
-()는 생략가능, {}는 생략 절대 안됨

```swift
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
```

### 조건문 if
- ()는 생략가능, {}는 생략 절대 안됨
- 조건절이 무조건 true/false가 되어야만 한다
  - 타 언어처럼 0은 false, 나머지 true 와 같은 인식은하지 않음

```swift
if 1 == 10 { print("틀림") }
```
- if의 다른 용법
  - if let 바인딩 : 유효한 값 판단(nil여부 판단)
  - if로 버전 검사 #available(플랫폼 버전)

### 조건문 gaurd
- if와는 반대의 개념으로 사용한다
- elary exit 용으로 사용한다
- 조건식에서 선언한 변수의 scope가 if문가 차이가 난다
- if문 처럼 옵셔널 바인딩이 된다

```swift
for i in 0..<10 {
    guard i<=2 else { break }
    // if i>2 { break } 와 같은 의미
}
```

### 조건문 swich
- 다른 언어와 차이 : break문을 작성하지 않는다(기본 해당 케이스만 수행)
  - fallthrough 키워드 : 다음 케이스도 수행하고 싶을 때
- 모든 케이스를 작성해줘야 한다. default 생략 불가능
- case에 범위 연산자로 범위 지정 가능
- 조건 변수에는 튜플, 딕셔너리 도 사용이 가능하다 (밸류 바인딩)

```swift
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
```
