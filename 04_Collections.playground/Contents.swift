import Foundation

// 튜플
var tuple1 = (false, "first", 2, 3.0)
print(tuple1)
print(tuple1.3,tuple1.1,tuple1.2,tuple1.0)
// 이름 매칭
var namedTuple: (tea: String, price: Int)
namedTuple = ("아메리카노", 3500)
let (tea, price) = namedTuple // 변수 매칭
print(tea)
print(price)
// 빈 튜플 (선언시 길이 고정이므로 의미가 없어짐)
var emptyTuple = ()
print(emptyTuple)
// 튜플 비교 ==, <, > : 앞에서부터 순서대로 비교


// 배열
// 선언 / 원소 추가 / 변경 / 삭제
let array1 = ["zero", "one", "two"] // immutable
var array2: [Int];
array2 = [0,1,2,3]
array2.append(4)
array2[0] = 4
array2[1..<5] = [3,2,1,0]
print(array2)
// ValueType (밸류타입)
var array3 = [1,2,3]
var array3copy = array3
array3 = [3,2,1]
print(array3)
print(array3copy)
// 레퍼런스가 복제되지 않는다
// 원소 개수 / 비어있나?
var array4 = [Int]() // 빈 배열 선언
print(array4.count, array4.isEmpty)
array4.append(contentsOf: [1,2,3,4,5])
print(array4.count, array4.isEmpty)


// 딕셔너리(Dictonary)
// 객체 생성 : key, value의 타입을 지정 필요
let dict1 = ["first":1, "second":2, "third":3]
var dict2: [String:Int]
var dict3: Dictionary<Int, String> = [100:"Jan", 200:"Jan"]
dict2 = ["first":1, "second":2, "third":3]
print(dict1)
print(dict1.count, dict1.isEmpty)
print(dict2)
print(dict3) // 배열과 달리 index가 순서를 지키지 않음
print(dict3[500]) // 배열과 달리 없는 key에 접근시 오류가 아니라 nil반환
// 딕셔너리 역시 밸류타입이다.


// 셋(집합)
// 선언
var set1: Set<Int> = [1,2,3]
print(set1)
set1.insert(5) // 추가
print(set1)
set1.remove(2) // 삭제
print(set1)
set1.insert(3) // 같은 element 추가
print(set1.count, set1.isEmpty)
print(set1)
// 집합 연산 가능
