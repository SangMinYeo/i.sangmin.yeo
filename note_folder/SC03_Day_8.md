# 스쿨 8일차

## 매개변수
- 때때로 객체가 특정행위를 수행하려면 부가적인 데이터 필요
ex)사람이 먹는다  ➛ 사람이 무엇을 먹는다

- (<반환 타입>)<메소드 이름>; ⟹기본형
- (<반환 타입>)<메소드 이름>:(<타입>)<내부 이름> <외부이름>:(<타입>)<내부이름> …..;   ⟹ 매개변수 사용   
매개변수는 구현부 안에서만 쓰인다.

* 사용법
  ```Objective-c
  - (id)eat:(id)food
  {
	NSLog(@“%@을(를) 먹습니다.”, food);
	return nil;
	}
  ```

* 호출
  ```Objective-c
  Person *me = [[Person alloc] init];
	[me eat:@“사과”];
  ```

      - (id)run;

      - (id)runTo:(id)location bySpeed:(id)speed);

* 구현
  ```Objective-c
  - (id)runTo:(id)location bySpeed:(id)speed
  {
	NSLog(@“%@로 달립니다. 속도는 %@입니다”, location, speed);
	return nil;
	}
  ```


##타입 정수
  - 부호가 있는 정수 NSInteger
  - 부호가 없는 정수 NSUInteger
* Objective-c에서는 Int를 쓰지 않는다.
* 값타입: 변수의 메모리 저장소에 값이 들어있다.
* 참조타입: 변수의 메모리 저장소에 객체의 주소가 들어있다.

* 숫자: 객체형
    - NSNumber
    - @뒤에 숫자를 써 주었던 것이 숫자를 객체로 사용한 것
* 문자표현
    * 문자 : 단 하나의 문자를 표현 :  char [Value Type:값타입] : (Bool, NSInteger, NSUinteger, CGFloat)
    * 문자열 : 문장 또는 문단을 표현 : NSString [Reference Type:참조타입]  : (NSString, NSNumber,id, 사용자의 클래스)
* id는 모든 객체타입을 나타냄
* 타입

# 형식지정자
* Format Specifier
  - %@, %%, %d, %ld, %u, %lu, …

* 확장문자(Escape Sequence)
  - \n, \t, \b, \f, \”, \’, \\

# @Class
import로 서로의 header를 참조하면 참조의 무한순환이 될 수 있어서
@class 클래스명; 의 형식으로 다른 클래스의 존재만 알려주는 정도로 할 수 있다.

# 다형성

###오늘의 정리
- 메서드 호출시 정보를 전달할 매개변수에 대해 알아보았습니다.
- 데이터 타입의 기본지식을 알아보았습니다.
* 부울, 정수, 실수, 문자열, 객체….
- 다형성에 대해 알아보았습니다.
* 같은 이름의 요소이지만 실제 동작은 다르다.
