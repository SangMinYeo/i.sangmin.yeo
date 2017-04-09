#스쿨 10일차

##초기화메소드
:객체를 생성한 후 곧바로 객체를 사용할 수 있도록 초기화 해 줄 수 있는 메소드 init
custom메소드를 만들어 봅시다


##super init
데이터를 선언하고 바로 초기화를 하려고 할때 부모클래스에서 초기화하고 값을 넣은뒤 자신의 객체에 넣음으로 인해
현재 클래스에서의 속성값 변조를 막는다.

 사용예)
 ```Objective-c
- (instancetype) initWithName: (DataType)매개변수
	{
	self = [super init];
	property = 매개변수;
	return self;
	}
  ```
