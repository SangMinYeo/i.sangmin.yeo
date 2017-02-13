#Literal 문법
-------------------------

기존에는 참조형 변수에 값을 할당하기 위해 메소드 형식의 문법을 모두 일일이 적어줬어야 했는데 이것을 괄호 등의 기호로 간소화 시킬 수 있는 문법으로 크게 3가지로 분류

##NSNumber Literals

NSNumber는 Foundation Framework에 속하는 클래스로써 char, short, int, long, long long 등의 정수와 float, double 실수, bool값 등 기존의 C 언어에서 값 타입이었던 값들을 참보형 타입으로 사용할 수 있게 한다.

```objc
NSNumber *char = @'c'; 
//[NSNumber numberWithChar:'c']

NSNumber *fiftyUnsigned = @50U;
//[NSNumber numberWithUnsignedInt:50U]

NSNumber *fiftyLong = @50L;
//[NSNumber numberWithLong:50L]

NSNumber *fiftyLongLong = @50LL;
//[NSNumber *fiftyLongLong:50LL]

NSNumber *piFloat = @3.141592F;
//[NSNumber numberWithFloat:3.141592F]

NSNumber *piDouble = @3.1415926;
//[NSNumber numberWithDouble:3.1415926]

NSNumber *yesNumber = @YES;
//[NSNumber numberWithBool:YES]

NSNumber *noNumber = @NO;
//[NSNumber numberWithBool:NO]

```
>@는 리터럴 문법에서 객체 값임을 뜻함.   

             
## Boxed Expression

> ( )괄호로 감싸는 것, C 수식의 결과에 적용가능함

```objc
NSNumber *smallestInt = @(-Int_Max - 1);

NSNmuber *pi0verTwo = @(M_PI / 2);

NSString *path = @(getenv("PATH"));

NSArray *pathConponents = [path componentsSeparatedByString:@":"];

```

##Boxed Enum
>enum값을 boxed enum방식을 통해서 사용

```objective-c
enum {
	AvaudioQualityMin = 0,
	AvaudioQualityLow = 0x20,
	AvaudioQualityyMedium = 0x40,
	AvaudioQualityHigh = 0x60,
	AvaudioQualityMax = 0x7F
	};
	
- (AVAudioRecorder *)recordToFile:(NSURL *)fileURL {   
NSDictionary *settings = @{ AVEncodingQualityKey : @(AvaudioQualityMax)};
return [[AVAudioRecorder alloc] initWithURL:fileURL
settings:settongs error:NULL];
}
```
```objective-c
typedef enum : unsigned char { Red, Green, Blue } Color;
NSNumber *red = @(Red) *green = @(Green), *blue = @(Blue);

typedef enum : unsigned char { Red, Green, Blue } Color;
Color col = Red;
NSNumber *nsCol = @(col);
```

##Container Literals

###Immutable Array
```objective-c
NSArray *array = @[ @"Hello", NSApp, [NSNumber numberWithInt:50] ];
```
>Array Literal은 모든 원소값이 non-nil인지 확인하는 +[NSArray arrayWithObjects:count:]의 확장형
>
>이전에는 +[NSArray arrayWithObjects:]형태가 사용됐는데 여기서는 nil값이 배열의 종료값으로 사용되었다.

배열은 @[ ] 형식으로 만들고 각 원소는 콤마(,)를 통해 구분한다. c와 달리 각 원소의 값은 Objective-C object pointer typed이라면 어떤 타입이라도 넣을 수 있다.
즉, int배열에 char을 못넣거나 float배열에 int를 못넣는다던지 하는 제약이 없다. 내부적으로는 배열이 아닌 Linked-list로 구현되어 있기 때문이다.


###Immutable Dictionary
```Objective-c
NSDictionary *dictionary = @{
	@"name" : NSUserName(),
	@"date" : [NSDate date],
	@"processInfo" : [NSProcessInfo processInfo]
	};
```
>Dictionary Literal은 모든 key와 Value가 non-nil임을 확인하는 +[NSDictionary dictionaryWithObjects:forkeys:count:]형태로 만들어진다.+[NSDictionary dictionaryWithObjects:forkeys:count:]는 nil이 값들의 종료값이다.
key:Value Pair구성으로 이루어져 있으며, 키나 밸류값에 nil이 들어갈 수 없다. 컴파일 시점에 nil이 발견되면 warning이 뜨게 되고, 런타임에서는 에러가 발생하게 된다.



#Json이란?
-----------------------
>Json은 속성값 쌍으로 이루어진 데이터 오브젝트를 전달하기 위해 인간이 읽을 수 있는 텍스트를 사용하는 개방형 표준 포맷이다.

비동기 브라우저/서버 통신(AJAX)을 위해, 넓게는 XML(AJAX가 사용)을 대체하는 주요 데이터 포맷이다.
특히, 인터넷에서 자료를 주고 받을 때 그 자료를 표현하는 방법으로 알려져 있다. 자료의 종류에 큰 제한은 없으며, 특히 컴퓨터 프로그램의 변수값을 표현하는데 적합하다.

본래는 자바스크립트 언어로부터 파생되어 자바스크립트의 구문 형식을 따르지만 언어 독립형 데이터 포맷이다.
즉, 프로그래밍 언어나 플랫폼에 독립적이므로, 구문 분석 및 Json 데이터 생성을 위한 코드는 C, C++, C#, 자바, 자바스크립트, 펄, 파이썬 등 수많은 프로그래밍 언어에서 쉽게 이용할 수 있다.

JSON포맷은 본래 __더글라스 크록포드__가 규정하였다.
RFC7159와 ECMA-404라는 두 개의 경쟁 표준에 의해 기술되고 있다. ECMA 표준은 문법만 정의할 정도로 최소한으로만 정의되어 있는 반면, RFC는 시맨틱, 보안적 고려 사항을 일부 제공하기도 한다. JSON의 공식 인터넷 미디어 타입은 ```application/json```이며, JSON의 파일 확장자는 ```.json```이다.







