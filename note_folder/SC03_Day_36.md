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
2. 
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

```		initWithTarget:selector:object;```

- Starting a Thread

```+ detachNewThreadSelector:toTarget:withObject ```

```- start```

- Stopptin a Thread

```	+ sleepForTimeInterval:```

```- cancel ```(함수이고 bool값이 바뀜)

- Execution State

```@property executing```

```@property finished```

```@property cancelled```


##GCD (Grand Centeral Dispatch)
> - 비동기로 작업을 수행, 강력하고 쉬움
> - 멀티코어 프로세서에 최적화 작동
> - dispatch queue를 이용해 작업을 컨트롤
> - Block으로 구현

###dispatch queue
- GCD의 핵심으로 GCD로 실행한 작업들을 관리하는 큐이다.
- 모든 큐는 FIFO구조이다.
- Serial dispatch queue: 직렬, Concurrent dispatch queue: 병렬_

_직렬은 꼭 FIFO이지만, 병렬은 꼭 FIFO가 아니다._

###Main Dispatch Queue
- Main Thread를 가르키며 기본 UI를 제어하는 큐이다.
- Serial 방식으로 들어온 순서대로 진행되며 앞에 작업이 종료될 때까지 뒤의 작업들은 대기 한다.
- 생성


		dispatch_queue_t global_queue =
		dispatch_get_main_queue();

###Global dispatch queue
- App전역에 사용되는 queue로서 concurrent방식의 queue이다.
- 총 4개의 queue로 이루어져있으며 중요도에 따라 High, Default, Low, Background queue중 선택됨
- 생성

		#define DISPATCH_QUEUE_PRIORITY_HIGH
		#define DISPATCH_QUEUE_PRIORITY_DEFAULT
		#define DISPATCH_QUEUE_PRIORITY_LOW
		#define DISPATCH_QUEUE_PRIORITY_BACKGROUND

###Private dispatch queue
- 사용자 정의 queue
- Serial 방식, Concurrent방식
- 생성

		dispatch_queue_t concurrent_queue =
		dispatch_queue_create("queue.name", DISPATCH_QUEUE_CONCURRE)
		dispatch_queue_t serial_queue = 
		dispatch_queue_create("queue.name", DISPATCH_QUEUE_SERUAL)

###Dispatch_after
```objc
dispatch_queue_t queue = dispatch_queue_create("com.wing.test",DISPATCH_QUEUE_CONCURRENT);
double delayInSeconds = 2.0;
dispatch_time_t popTime =dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
dispatch_after(popTime, queue, ^{ NSLog(@"Call 1");});
dispatch_async(queue, ^{ NSLog(@"Call 2");});
dispatch_async(queue, ^{ NSLog(@"Call 3");});
dispatch_async(queue, ^{ NSLog(@"Call 4");});
dispatch_async(queue, ^{ NSLog(@"Call 5");});

```

###Dispatch_barrier_async
```objc
dispatch_queue_t queue = dispatch_queue_create("com.wing.test", DISPATCH_QUEUE_CONCURRENT);
dispatch_async(queue, ^{ NSLog(@"Call 1"); });
dispatch_async(queue, ^{ NSLog(@"Call 2"); });
dispatch_async(queue, ^{ NSLog(@"Call 3"); });
dispatch_async(queue, ^{ NSLog(@"Call 4"); });
dispatch_async(queue, ^{ NSLog(@"Call 5"); });
dispatch_barrier_async(queue, ^{ NSLog(@"/-------------/"); });
dispatch_async(queue, ^{ NSLog(@"Call 5"); });
dispatch_async(queue, ^{ NSLog(@"Call 6"); });
dispatch_async(queue, ^{ NSLog(@"Call 7"); });
dispatch_async(queue, ^{ NSLog(@"Call 8"); });
dispatch_async(queue, ^{ NSLog(@"Call 9"); });
dispatch_async(queue, ^{ NSLog(@"Call 10"); });
```

