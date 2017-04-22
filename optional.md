:octocat: [owo-study/swift2017](https://github.com/owo-study/swift2017)
### Swift 기초 스터디 (2017/가산)

## nil과 옵셔널

### nil (pointer)
- 다른 언어의 null에 해당
- ~~값이 할당되지 않음을 의미~~ 보다 메모리의 해당 주소가 초기화 되지 않았음을 의미
- Int와 Bool에도 nil값이 가능 (Primitive)

### Optional Type
- nil값이 대입이 가능한 변수나 상수
- DataType 뒤에 ?를 붙여주면 optional type으로 선언된다

```swift
var optionalString: String? // nil값으로 자동 초기화
print( optionalString )
```
> nil 값은 타입 추론이 불가능하기 때문에 optional로 선언시 DataType을 명시해주어야만 한다.

### 옵셔널 사용하기
- 해당 변수나 상수가 nil값이 되면 문제가 될수 있으니 항상 nil일 경우와 아닐 경우를 같이 생각해주어야 한다

#### 1. 옵셔널 바인딩
##### `if let .. else .. (또는 garud let ..) 사용`
- if문의 한 종류 (다른 keyword라는 생각을 가지고 접근하는 것이 좋을듯..)

```swift
var optionalValue: Int?
// optionalValue = 24 * 60
if let bindingValueName = optionalValue {
    // nil이 아닐때 처리
    print("optionalValue가 nil이 아닙니다. if문 내부에서 bindingValueName로 사용되면 Type은 Int입니다.", bindingValueName)
}else{
    // nil값일 때 처리
    print("optionalValue가 nil값입니다. bindingValueName는 사용할 수 없습니다.")
}
```

- ?? 연산자 사용하기 : nil일 경우 초기값을 지정하는 방법

```swift
var optinalColorVal: String?
optinalColorVal = "blue"
var color = optinalColorVal ?? "lime"
```

#### 2. 옵셔널 체인
- 일반 변수나 상수에 ?붙여 코딩하면 컴파일러가 판별하여 수행
  - nil값이면 수행하지 않고 nil 반환
  - nil값이 아니면 수행한 후 다시 해당 타입의 optional type으로 반환

```swift
var optionalStr: String?
let string = optionalStr?.uppercased() // nil이 아니면 대문자 변환 수행
print(string)
```

#### 3. 강제 언래핑 (Forced Unwrapping)
- ! 기호 사용
- optional type을 non-optional type으로 강제 변경

```swift
var optionalInt: Int? = 100
let forecedUnwrappingInt = optionalInt!
print(forecedUnwrappingInt)
```

##### 암시적 강제 언래핑 (Implicitly Unwrapping Optional = IUO)
- 선언시 ?대신 !를 사용
```swift
var iuoString: String! = "optinal?"
print(iuoString)
```

> 강제 언래핑은 실행타임시 nil이면 앱이 crash가 날 수 있으니 확실한 경우에만 사용할 것!
