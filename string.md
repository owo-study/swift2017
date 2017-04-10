:octocat: [owo-study/swift2017](https://github.com/owo-study/swift2017)
### Swift 기초 스터디 (2017/가산)

## 문자와 문자열

### 선언

```swift
var str1 = "문자열1"
var str2: String = "문자열2"
// 생성자로 다른 변수 형변환 가능
let YES = true
var str3 = String(YES)
print(str3)
```

#### String Interpolation
- `\()`를 사용하는 방법
- 수식 연산이나 메소드 호출 등이 가능하다.

```swift
let ice = "아이스크림이"
let str = "나는 \(ice) 좋다"
print(str)
print("1+2=\(1+2)")
```

#### FormatString
- c언어의 printf와 같이 형식을 지정하고 param으로 args를 넣어 문자열을 완성하는 방식

```swift
let str = String(format: "%04d-%02d-%02d", 2014, 4, 9)
print(str)
```

### 문자열 붙이기 (Concat)
- + 기호로 가능하고, append() 메소드

```swift
var str = "문자"
str = str + "열 더"
str += "하기"
print(str)

str.append(" 그리고 더하기")
print(str)
```

### 문자열 비교하기
- 단순히 같거나 길이의 크고작음을 비교할때는 ==, >, < 기호로 가능하다

```swift
if str == "문자열" {
    print("str의 내용은 [문자열]입니다")
}else{
    print("str의 내용은 [문자열]이 아닙니다")
}
if str < "거북이" {
    print("str이 더 짧습니다")
}else{
    print("str이 길거나 같습니다")
}
```

- 다양한 비교를 위해서는 index 개념을 알아야 한다

#### index 와 Range 객체
> - (TODO : 좀더 쉬운 설명 준비할 것)

### 트리밍
- 문자열의 공백 정리할 경우 많이 사용한다

```swift
let spaceStr = " Hello Swift "
spaceStr.trimmingCharacters(in: .whitespaces)
```

### 문자열 길이 다루기
> 문자열의 encording에 따라 달라질 수 있다.

- 우리가 일반적으로 보는 문자열의 갯수는 characters를 기준

```swift
let str = "안녕 world~!"
print(str.characters.count) // 일반적으로 가장 많이 씀
print(str.utf8.count) // utf8로 인코딩할 경우 글자수
print(str.unicodeScalars.count) // 유니코드로할 경우 글자수
```
