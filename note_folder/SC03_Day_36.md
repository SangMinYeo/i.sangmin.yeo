#Thread

> UI관련 프로세스는 메인스레드에서만 실행된다.

MultiThread사용 예
- network
- time control
- image download
- long time actions

##교착상태
> 두개 이상의 작업이 서로 상대방의 작업이 끝나기 만을 기다리고 있기 때문에 결과적으로 아무것도 완료되지 못하는 상태를 가리킨다.


##MultiThread 방법
1. NSthread : 직접  thread를 만들어서 제어 하는 방식
2. CGD : Block 기반의 기법으로 코드 가독성이 좋고 간편
3. NSOperation : GCD기반의 rapper Class. 간단하게 사용가능하고 고수준의 API를 제공한다. 성능은 느림
4. performSelector : Selector를 이용한 방식으로 ARC 이전에 많이 사용한 방식이었으나 GCD 이후엔 사용되지 않는다.
5. NSTimer : 간단한 interval Notification를 제공해주는 Class. 특이하게도 NSTimer는 mainLoop에서 실행된다.

_오늘 수업에서는 NSThread, GCD를 하고 NSTimer도 해본다._

##NSThread
- Main thread외 다른 스레드를 만드는 클래스
- UI는 절대 추가 Thread에서 실행시키면 안됨
- Selector로 실행된 Method가 종료후 자연스럽게 Thread가 종료됨
- cancel명령으로 강제종료가 되지 않는다.

###요소
- Initializing

``		initWithTarget:selector:object;``

- Starting a Thread

``+ detachNewThreadSelector:toTarget:withObject ``

``- start``

- Stopptin a Thread

``	+ sleepForTimeInterval:``

``- cancel ``(함수이고 bool값이 바뀜)

- Execution State

``@property executing``

``@property finished``

``@property cancelled``