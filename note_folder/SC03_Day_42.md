#projet setting

###Precompiled Header
- 컴파일전에 자주 사용하느 ㄴ헤더파일을 미리 컴파일 하여 캐쉬에 저장
- 헤더파일 컴파일 시간을 단축시키기 위해 사용
- 전역적으로 사용하고 싶은 데이터 헤더 파일을 선언하고 PCH


###버전 가져오기
- [[[UIDevice currentDevice] systemVersion]

```objc
#define SYSTEM_VERSION [[[UIDevice currentDevice] systemVersion];
```

###Preprocessor Macros - Device
Project-Building settings-Preprocessor Macros 에서 debug모드일때와 release모드일 때 실행할 내용들을 정의
```objc
#ifdef 
#endif
```

TargetConditionals.h