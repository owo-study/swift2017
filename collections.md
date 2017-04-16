v:octocat: [owo-study/swift2017](https://github.com/owo-study/swift2017)
### Swift 기초 스터디 (2017/가산)

## 다수의 데이터 다루기 (=Collections)

### 튜플
- 다양한 타입의 data를 묶는 자료 구조
- var로 선언하여도 length는 변경 불가능
- 선언 및 사용 : ()안에 data를 나열, 순서대로 index가 생성되어 .[index]로 접근 가능

```swift
var tuple1 = (false, "first", 2, 3.0)
print(tuple1)
print(tuple1.3, tuple1.1, tuple1.2, tuple1.0)
var namedTuple: (tea: String, price: Int)
namedTuple = ("아메리카노", 3500)
let (tea, price) = namedTuple // 변수 매칭
print(tea)
print(price)
```
> ~~구조체와 배열 사이 어딘가에 존재할듯한 Collection이나 딱히 적절한 사용차가 없어보임~~
> - 활용 참고 : https://outofbedlam.github.io/swift/2016/04/02/TupleBestPractice/


### 배열
- 같은 자료형의 data집합, 메모리상에 순차적으로 저장되는 자료 구조 (index 기반)
  - (예외로 AnyObject로 선언하면 다른 타입을 가질 수는 있으나 추천하지 않음)
- element 추가, 삭제 : append(), remove()
- element 변경은 [index] 접근으로 변수처럼 사용

```swift
let array1 = ["zero", "one", "two"]
print(array1)

var array2: [Int];
array2 = [1,2,3]
array2.append(4)
array2[4] = 5
array2[5...9] = array2.
print(array2)
```
- value타입 : 다른 언어와는 조금 다르게 배열의 대입(=)이 같은 memory 주소(ref)를 가리키는 것이 아니라 값이 복제 된다

```swift
var array3 = [1,2,3]
var array3copy = array3
array3 = [3,2,1]
print(array3)
print(array3copy)
```
- element개수 세기(length), 빈 배열 확인은 isEmpty와 count로 확인

```swift
var array4 = [Int]() // 빈 배열 선언
print(array4.count, array4.isEmpty)
array4.append(contentsOf: [1,2,3,4,5])
print(array4.count, array4.isEmpty)
```

### 딕셔너리
- 배열과 유사하나 index가 아니라 key를 사용
- 선언 : Dictionary<키타입, 값타입> 또는 [키타입, 값타입]

```swift
let dict1 = ["first":1, "second":2, "third":3]
var dict2: [String:Int]
var dict3: Dictionary<Int, String> = [100:"Jan", 200:"Jan"]
dict2 = ["first":1, "second":2, "third":3]
print(dict1)
print(dict1.count, dict1.isEmpty)
print(dict2)
print(dict3) // 배열과 달리 index가 순서를 지키지 않음
print(dict3[500]) // 배열과 달리 없는 key에 접근시 오류가 아니라 nil반환
```
- 배열과 동일하게 ValueType이므로 대입(=)연산시 값이 복사된다


### 집합
- 내부의 element가 중복이 되지 않는 형태의 자료 구조

```swift
var set1: Set<Int> = [1,2,3]
print(set1)
set1.insert(5) // 추가
print(set1)
set1.remove(2) // 삭제
print(set1)
set1.insert(3) // 같은 element 추가
print(set1.count, set1.isEmpty)
print(set1)
```
- 집합 연산 가능
  - 합집합 : union
  - 차집합 : subtracting
  - 교집합 : insersection
