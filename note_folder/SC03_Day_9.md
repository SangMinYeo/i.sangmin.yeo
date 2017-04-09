#스쿨 9일차

## 시작전 토킹
- 추천 Object-C 책 저자 스티븐코찬

- double, float의 차이 : float의 두배가 double 그리고 각각 32비트, 64비트. 귀찮으면 CGFloat사용(UIKit이 있을때만)

## Overriding, 은닉화

* 클래스
- 같은 종류의 집단에 속하는 속성과 행위를 정의한 것. 객체지향 프로그램의 기본적인 사용자 정의 데이터형

* 객체
    - 클래스의 인스턴스(실제로 메모리에 할당된 것). 객체는 자신의 고유의 속성을 가지며 클래스에서 정의한 행위를 수행할 수 있다.
    - 객체의 행위는 클래스에 정의된 행위에 대해 정의를 공유함으로써 메모리를 경제적으로 사용.

## 상속
- 새로운 클래스가 기존 클래스의 자료와 연산을 이용할 수 있게 하는 기능
-  Subclassing
- 부모 클래스와 자식 클래스로 구성
- 하위클래스로 갈수록 범위가 확장되는 개념.
``` Object-C
@interface Warrior : NSObject
@property NSString *name;
```
 * NSObject Hierachy
![NSObject_hierachy](https://github.com/SangMinYeo/i.sangmin.yeo/blob/master/note_folder/image/nsobject_hierarchy.jpg?raw=true)



* Warrior, Wizard의 공통점을 가지는 GameCharacter 라는 속성을 가집니다.

✭☆View배울때 UIKit에 없는 메소드라도 상속개념을 잘 생각해서 상위 클래스에 있을 법한 메소드를 찾을 생각을 해야한다✭☆


##재정의(Override)
- 상위 클래스에서 갖고 있는 메소드를 하위클래스에서 재정의

##다형성
- 재정의와 중복정의(Overload)는 OOP의 다형성의 또다른 모습
- 하지만! Object-C에서는 Overload를 지원하지 않음
✦ 다른 언어에서 overload는 이름은 같지만 파라메터의 갯수 종류가 다를 수 있다는 것


##self
- 클래스 내에서 자기자신 클래스를 지칭할 때 사용
##super
- 클래스 내에서 상위 클래스를 지칭할 때 사용, 정확히는 상위클래스의 객체를 지칭
