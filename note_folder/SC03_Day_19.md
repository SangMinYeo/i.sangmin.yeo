# 스쿨 19일차

## Pointer

#### Memory구조


- STACK	: 지역변수, 매개변수 등
- HEAP	: 동적할당을 위한 영역
- DATA	: 전역변수, 정적변수가 저장
- CODE	: 프로그램 Code저장

```Objective-C
Person *person = [[Person alloc] init];
```
```Objective-C
Person* person //STACK
```
```Objective-C
[[Person alloc] init];  //HEAP(어느정도 사이즈일지몰라서)
```
```Objective-C
Person *person = [[Person alloc] init]; 전체는 CODE에 들어감
```
```Objective-C
const NSInteger number = 5; //const는 상수
```
```Objective-C
static NSInteger number = 5; //정적변수 - 전역(프로그램이 종료될때까지 남음 그래서 DATA에 들어감:정적변수)
```
*포인터 :(주소값을 가지고 있는 변수)
포인터(Pointer)는 프로그래밍 언어에서 다른변수 혹은 그 변수의 메모리 공간주소를 가리키는 변수를 말한다.*

## Value 타입 VS Reference 타입

### 구조체
- 서로 다른 타입의 데이터를 묶여 있는 데이터 구조
- CGPoint, CGSize,…
- 선언부:
```Objective-c
struct <tagName>{
	<value type><name>;
	<value type><name>;
	…
	};
```
- 값타입, 그래서 데이터 영역에 저장됨.
- 사용 : struct 구조체 변수명;

## typedef 별명짓기
* 타입에 별명을 지어주는 키워드
* typedef <데이터타입><이름>;

ARC : Auto Reference Count
:클래스는 구조체 안에서 사용할 수 없다.

## 배열 Array

## Linked List
- 포인터와 값으로 이루어진 노드가 있고 이 노드들이 서로 연결되어 있는게 Linked List이다
- 노드를 구조체로 만들면 되나, Objective-C에서는 Class로 만드는게 좋다.
* 단일 연결리스트 - 가장단순한구조, 다음노드를 찾기쉽지만 선행 노드를 찾기 힘들다, 탐색시 처음부터 다 뒤져야함.
* 원형연결리스트 - 시작이 정해지지않았다, head를 내마음대로 변경할 수 있다, 마지막에 add할 경우 단일 연결에 비해 쉽다.
* 이중연결리스트  - 노드가 양방향의 링크를 모두 가지고 있으므로 탐색이 다른 리스트에 비해 용이하다, 다른 리스트에 비해 코드가 복잡하고, 메모리 공간을 많이 차지한다(그렇지만 요새는 그렇지도 않다)


* 링크드리스트 구조체 만들기 - 시간날때 해보기



* jason과 리터럴 문법에 대해 조사하기 숙제 : [Jason과 리터럴 문법](https://github.com/SangMinYeo/i.sangmin.yeo/blob/master/homework/homework_170208.md)

*기존에는 참조형 변수에 값을 할당하기 위해 메소드 형식의 문법을 모두 일일이 적어줬어야 했는데 이것을 괄호 등의 기호로 간소화 시킬 수 있는 문법으로 크게 3가지로 분류*

## NSNumber Literals

> NSNumber는 Foundation Framework에 속하는 클래스로써 char, short, int, long, long long 등의 정수와 float, double 실수, bool값 등 기존의 C 언어에서 값 타입이었던 값들을 참보형 타입으로 사용할 수 있게 한다.
