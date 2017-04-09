:octocat: [owo-study/swift2017](https://github.com/owo-study/swift2017)
### Swift 기초 스터디 (2017/가산)

## 데이터 타입과 연산

### 변수와 상수
- 변수는 var 키워드로 선언 및 사용한다
  - 타입 추론 : 선언시 초기화한 값을 컴파일러가 추론하여 타입 지정
  - 타입 지정 가능 (ex> :Int)
  - (그러나 swift는 타입구분이 엄격한 편에 속한다)
- 상수는 let 키워드로 선언 및 사용은 같으나 값(메모리주소)을 변경할수 없다.

```swift
// 변수와 상수
var 변수 = "변수는 내용이 변경 가능합니다" // 변수 type은 compiler가 추론
print(변수)

변수 = "사실 메모리에서 인스턴스의 주소 변경이 가능하다고 이해하는게 더 맞는것 같다"
print(변수)

let 상수 = "내용 변경이 불가능하다"
print(상수)

상수 = "변경하려면 에러가 발생한다" // error

var 정수형변수: Int
정수형변수 = 10
print(정수형변수)

var 실수형변수: Float = 10.10 // 타입 명시후 한번에 선언
print(실수형변수)
```

### 연산자 (Operator)
- 논리 : && || !
- 산술 : + - * / %
- 부호 : + -
- 복합 연산자 : += -= \*= /= %=
  - (증감 연산자인 --, ++는 swift3부터는 지원되지 않는다)
- 범위 연산자 : ...(닫힌) ..<(반닫힌)

#### nil값
- 타언어의 null과 동일. (메모리 주소에) 값이 없음 없음을 의미

### 자료형 (DataType)
- 자료형(Datatype)
- F/T불대수 : Bool
- 정수 : Int, UInt (unsigned int: 양수만)
    - Int는 사용하는 플랫폼에 따라 32또는 64로 설정
    - 크기에 따라 Int8, Int16, Int32, Int64로 설정 가능
        - 타입 각각이 연산시 호환은 되지 않음 (변환 필요)
    - [자료형].max, [자료형].min 등을 사용해 최대/최소값을 확인 가능
- 실수 : Float, Double
- 문자 : Character
- 문자열 : String

```swift
print("UInt32.max=\(UInt32.max)")
print("UInt32.min=\(UInt32.min)")
print("Int64.max=\(Int64.max)")
print("Int64.min=\(Int64.min)")
```

### 자료형변환 (Type Casting)
- 각 자료형 객체의 생성자를 이용해 선언하는 방법

```swift
let 문자열로된수 = "1234"
let 정수로변환 = Int(문자열로된수)!
print( 정수로변환 - 230 )
```

### 자료형 알아내기 (`type(of: [])`)
- 내장 함수인 type() 이용

```swift
print( type(of: "1234") )
print( type(of: 1234) )
```
