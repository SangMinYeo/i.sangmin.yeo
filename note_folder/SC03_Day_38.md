#Category

> 서브 클래스를 만들지 않고 기본 클래스에 메소드를 추가 하는 것

- 일반적으로 cocoa Framework에 정의된 클래스에 추가 메소드를 추가 함.
- property를 추가 할 수 없다(확장개념이라 엄연히 다른 파일이기 때문에 쓸 수 없다)

###category 선언
```objc
#import "SystemClass.h"

@interface SystemClass(CategoryName)
//메소드 선언
@종료
```

###Category명명규칙
```objc
```

###Class Extension
- 익명 카테고리로 불리운다.
- @interface 부분을 나누어 사용할 수 있다 (@impelmentation는 분리 할 수 없다)


###Extension
```objc
@interface Person() {

#import
```




#Animation
- UIView Animation
- UIView 

```objc
###UIView Animation Method
+ (void)animateWithDuration:(NStimeInterval)durati

###Animaiont do