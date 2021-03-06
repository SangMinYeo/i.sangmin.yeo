# 스쿨 11일차

## 클래스와 객체
- .h파일과 .m파일의 정의
- .h: 헤더파일. 클래스, 타입, 함수의 정의
- .m : 소스파일. Objective-C와  C코드 적용가능
- .mm파일 : 소스파일. Objective-C와 C와 C++적용 가능. 따로 셋팅해야함
- 헤더파일 추가 : #import지시어로 사용
- Framework의 경우는 <Framework>로 사용된다.
- 다른 클래스의 경우는 “Classfile.h”로 헤더파일을 추가 가능하며 .m파일은 참조 불가
- 헤더파일이 import 되어야만 다른 클래스의 객체 생성및 추가가 가능하다.

✦서로 import를 하면 순환참조가 되므로 막기위해 @class name로 참조한다.
: 이는 해당 클래스에게 그런 클래스 이름이 존재한다 정도만 알려준다. import는 내용까지 다 가져온다.

# interface
- 클래스를 선언한다(상속관계와 프로토콜 선언)
- 객체와 통신할 메소드를 선언
- Property변수를 선언
- .h파일안에 작성된다.(그러나 .m파일에서도 된다)
ex)
```Object-C
@interface Car: NSObject
@property NSString *name;
-(void) bootting;
@end     //interface종료
```
# 구현부 - implementation
- 클래스의 메서드를 구현하는 실제 코드가 담겨 있다.
- .m파일에 작성되다.

ex)
```Objective-c
@implementation Car
-(void)bootting
{
NSLog(@“부릉부릉”);   // 인스턴스 Method구현
}
-(void)accelerating
{
NSLog(@“속도가 10 증가했습니다”);
}
@end  //implementation 종료
```

❖QuickHelp는 구현파일에 하는게 좋고, 헤더파일에는 간단한 주석정도 다는게 좋다

##인스턴스화(객체화)

##메소드 :
- 인스턴스에 적용되거나 클래스에 적용되는 행동으로 나눈다
- 컴퓨터가 수행할 명령어
- 객체는 보통 객체 자신만 접근 가능한 정보를 포함하는데, 메소드는 이 데이터에 접근하고 수정하는 방법을 제공.

```Object-C
-(NSInteger) doubleNum:(NSInteger)num1
				num2:(NSInteger)nuym2…
{
	//행동 : 입력된 숫자를 2배 해서 반환 해준다.
	return number * 2;
}
```
## 메소드 특징- 반환값
  - 반환타입선언과 반환값의 타입은 같아야 한다.
  - 메소드에서는 무조건 한개의 데이터만 반환한다.
  - 반환값이 없는 경우에만 void를 사용한다.

## 캐스팅-입력값과 결과값의 타입이 다를때 맞추는 방법
 : 사용방법 : 결과값 앞에 예상되는 타입을 명시한다.
임시적이기 때문에 지속적인 값타입 유지를 원하면 변수에 넣어야 한다.

문제 : 도형 치수 구하기

## 메소드 사용 - 메세징
- 메세지를 불러오고 싶다면 object를 메세징해야합니다.
- 메소드 중복사용의 예 : [] 안의 내용부터 먼저 호출
- 인스턴스 생성시 객체의 초기화값을 정해줄 수 있다
- 기본 초기화 메소드(init)는 NSObject에 정의 되어 있다.
- init메소드를 override할 수 있다.
- 사용자 임의대로 Custom init 메소드를 만들 수 있다.

## 클래스메소드  VS 인스턴스 메소드
* 클래스 메소드 +(id)classMethod; : 인스턴스 속성에 상관없이 클래스 자체에 필요한 행위를 정의할 때
* 인스턴스 메소드
☞클래스 메소드는 객체를 만들지 않고도 바로 사용할 수 있어 편리하다.


 * 프레임워크와 라이브러리의 차이 Homework
