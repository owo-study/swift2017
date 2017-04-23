:octocat: [owo-study/swift2017](https://github.com/owo-study/swift2017)
### Swift 기초 스터디 (2017/가산)

## 함수

### 함수란?
- 프로그램에서 특정 동작을 수행하는 코드의 일정 부분
- 하나의 큰 프로그램을 부분적으로 나눌수 있도록 해주는 가장 작은 단위
- 구성요소 : 이름, 반환값, 파라미터
- swift에서는 func 키워드로 정의 한다
- parameter는 함수 내부에서는 `기본적으로 상수`(let)다

#### Swift에서 함수 형태
```swift
func 함수명(파라미터외부이름 파라미터내부이름: 타입, ...) -> 반환타입 {
  // 수행할 내용
  return 반환 값
}
```

- ex) 파라미터, 반환 값이 없는 함수

```swift
func function1(){
    print("function1에서 수행")
}
function1()
```
- [tip]반환값을 여러가지 타입으로 하고싶은 경우 tuple을 활용할 수 있다.

- 파라미터 외부/내부 이름이 같을 경우 한번만 쓰면 된다.
- 파라미터 외부이름의 경우 _ 기를 넣으면 생략 가능

```swift
func sayHello(strParam: String){
    print(strParam)
}
sayHello(strParam: "안녕")

func sayHello2(person strParam: String){
    print(strParam)
}
sayHello2(person: "세상")

func sayHello3(_ strParam: String){
    print(strParam)
}
sayHello3("세상")
```
- 함수 오버로딩 : 같은 이름의 함수지만 파라미터/반환값 등에 따라 다른 함수로 인식

#### 파라미터는 가변길이도 가능하다 (...연산자 이용)

```swift
func function2(_ params: Int...){
    for param in params {
        print(param)
    }
}
function2(1,3,5,7,9)
```

- 파라미터의 기본값 설정 가능

```swift
func function3(_ strParam: String, _ intParam: Int=1 ){
    print(intParam, strParam)
}
function3("Hello", 5)
function3("World")
```

#### inout 키워드 (pass by value/reference)
- 함수의 파라미터는 기본적으로 상수로 인식 (and pass by value)
- 함수내부에서 값을 변경하기 위해서는 inout 키워드를 사용해야 한다.
- 파라미터 호출에는 &를 사용
```swift
func function4(_ param: inout Int){
    param = 10
}
var value: Int = 5
function4(&value) // call(pass) by reference
print(value)
```
