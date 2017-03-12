# Block

- C언어의 확장형 문법
-  ^을 literal문법으로 시작시에 사용
- 외부값을 capture해서 사용
- 다른 언어의 closures나 lambdas와 같은 역할

함수와 메소드의 문법 차이

* 메소드 
``
-(void) name:(NSInteger)num
``
* 함수
``
void main (NSInteger num)
``

`` 
void (^name)(NSInteger num)
{
}
^{
}
``

> 위 함수의 구현부만 쪼개어서 객체로 쓴다 = 변수처럼 쓴다 = 타입이 필요

문법 예시)
``void (^simpleBlock)(void); 
simpleBlock = ^{
	NSLog(@"This is a block");
	};``
	
>함수를 변수에 넣어서 쓸 수 있기 때문에 사용이 매우 편리하다. 다만 편리함에도 메소드를 대체 하지 않는 이유는 클래스 내에서 property와 연관되어 있어 사용하는 메소드들과는 달리 블럭함수는 그때그때 사용할때 값이 Capture되어 다른 곳에서 사용되는 함수와는 연관이 없어지는 점이 다르기 때문이다.

