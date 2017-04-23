import Foundation

//// nil과 옵셔널
// nil (다른언어의 null에 해당)
// 옵셔널 타입 : 타입뒤에 ?를 붙임
var optionalString: String? // nil값으로 자동 초기화
print(optionalString)
// 옵셔널 타입의 특징: nil 대입 가능, 자동 초기화 (nil값)
// Collection 선언시 ?위치 주의!
// var arr:[String]? 와 arr:[String?]의 차이 주의

// 옵셔널 사용하기
// if let : 옵셔널 바인딩 (gaurd let)
var optionalValue: Int?
if let bindingValueName = optionalValue {
    // nil이 아닐때 처리
    print("optionalValue가 nil이 아닙니다. if문 내부에서 bindingValueName로 사용되면 Type은 Int입니다.", bindingValueName)
}else{
    // nil값일 때 처리
    print("optionalValue가 nil값입니다. bindingValueName는 사용할 수 없습니다.")
}
// ?? 연산자 (옵셔널용 연산자)
var optinalColorVal: String?
optinalColorVal = "blue"
var color = optinalColorVal ?? "lime"

// 옵셔널 체인
var optionalStr: String?
let string = optionalStr?.uppercased() // nil이 아니면 대문자 변환 수행
print(string)

// 강제 언래핑 !
var optionalInt: Int? = 100
let forecedUnwrappingInt = optionalInt!
print(forecedUnwrappingInt)
// 주의: 실행타임시 nil이면 앱이 crash가 날 수 있으니 확실한 경우에만 사용할 것!
// 암시적 언래핑 옵셔널 (IOU) : 타입 선언시 뒤에 !를 붙임 = 자동언래핑됨
var iuoString: String! = "optinal?"
print(iuoString)
// 옵셔널 값을 일반 값처럼 사용 가능하나 nil일경우 런타임시 오류
