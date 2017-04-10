import Foundation

/** 문자열  **/
// 문자 : Charater
// 문자열 : String

// 선언
var str: String = "문자열"
print(str)

// String Interpolation = \()
str = "스트링 인터폴레이션 : \(str)"
print(str)
str = "1+2=\(1+2)"
print(str)

// 다른 타입에서 문자열 생성
let YES = true
let yesStr = String(YES) // 생성자 파라미터로
print(yesStr)

// 형식 문자열 (FormatString)
str = String(format: "%04d-%02d-%02d", 2014, 4, 9)
print(str)

// 문자열 붙이기(Concat) : + 기호로 가능은 함
str = "문자"
str = str + "열 더"
str += "하기"
print(str)
// append 사용
str.append(" 그리고 더하기")
print(str)

// 문자열 비교를 ==로도 가능하다
if str == "문자열" {
    print("str의 내용은 [문자열]입니다")
}else{
    print("str의 내용은 [문자열]이 아닙니다")
}
// 간단히 길이를 비교 할때 >, <도 사용이 가능합니다
if str < "거북이" {
    print("str이 더 짧습니다")
}else{
    print("str이 길거나 같습니다")
}

// 문자열 시작과 끝 비교
print( str.hasPrefix("캐릭터") )
print( str.hasSuffix("더하기") )

// 문자열 비교 (다양하게)
// Fondation 프레임웤 import 필요
print( str.compare("더하기") )
print( str.compare("캐릭터") )
// 비교 옵션이 다양함 (범위, 로케일, 대소문자 구분없이 등)

// 대문자 소문자 변환하기 
str = "Hello World"
print( str.uppercased() )
print( str.lowercased() )

// 위치 다루기 (index로 다루어야 함)
let startIdx = str.startIndex
let endIdx = str.endIndex
print( startIdx )
print( endIdx ) // 마지막 문자열의 위치가 아님에 주의
// 특정 인덱스 얻기
let beforeIdx = str.index(before: endIdx)
print( beforeIdx ) // 하나 전의 index 얻기
let afterIdx = str.index(after: startIdx)
print( afterIdx ) // 하나 뒤의 index 얻기
// 부분 문자열
var subStr = str[afterIdx...beforeIdx]
print(subStr)
// Fondation 프레임웤 import 필요
subStr = str.substring(to: beforeIdx) // 해당 인덱스 앞으로
print(subStr)
subStr = str.substring(from: afterIdx) // 해당 인덱스 뒤로
print(subStr)
// 문자열 내 검색(range)

// 트리밍
let spaceStr = " Hello Swift "
spaceStr.trimmingCharacters(in: .whitespaces)

// 문자열 내용추가 (index로 함)
let char: Character = "E"
str.insert(char, at: afterIdx)
print(str)
// 문열 일부 삭제
/* TODO 사용 중지
let range = 2...5
str.removeSubrange(Range.contains(<#T##Range<Comparable>#>))
print(str)
*/

// 문자열 길이 다루기
str = "안녕~ world"
print(str.characters.count) // 글자수 (일반적으로 가장 많이 씀)
print(str.utf8.count) // utf8로 인코딩할 경우 글자수
print(str.unicodeScalars.count) // 유니코드로할 경우 글자수

// 파일로 저장하기 (실제로는 잘 사용하지 않는 방법!)
try str.write(toFile: "TEST", atomically: true, encoding: String.Encoding.utf8)
let loadStr = try String.init(contentsOfFile: "TEST")
print(loadStr)
// Mac 프로그램 개발이 아니면 잊어버리자 (iOS는 UserDefault나 CoreData에 저장)
