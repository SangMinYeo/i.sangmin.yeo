# 스쿨 5일차

### 공학이란?
>
- 수학과 자연과학을 기초로 해서 가끔은 인문, 사회과학의 지식을 이용해서 공동의 안전, 건설, 복지를 위해서 유용한 사물이나 환경을 구축하는 것을 목적으로 하는 학문
- 공학의 영역은 넓고, 여러가지로 분야로 세분화 되어 있다.
- 소프트웨어 공학 : 소프트웨어의 개발,운용,유지보수 및 폐기에 대한 체계적인 접근방법

## 소프트웨어 개발 생명주기 모델
- Software Development Life Cycle Model
- 소프트웨어를 어떻게 개발할 것인가에 대한 전체적인 흐름
- 주먹구구식, 폭포수, 프로토타이핑, 나선형

## 폭포수 모델

1. 요구사항 분석  ➤➤ Product requirements document
2. 설계  ➤➤ software architecture
3. 구현  ➤➤ software
4. 확인/검증  ➤➤
5. 유지보수  ➤➤

☞ 단점으로 고객의 요구사항이 변경 또는 설계 미스가 나중에 발견 되었을때 되돌리기가 힘들다.

## 프로토타이핑

1. 요구분석
2. 프로토타입설계
3. 프로토타입개발
4. 프로토타입평가
5. 구현
6. 인수 및 설치
☛ 1~4단계를 feedback을 받으면서 반복
⇏ 단점은 품질저하, 요구사항의 변경, feedback의 증가로인한 시간소요

## 나선형모델

1. 계획및정의
2. 위험분석
3. 구축
4. 고객평가
5. 고객과의 의사소통
⇏ 단점으로 일관성이 떨어짐
￼

## 소프트웨어 개발방법론
* 소프트웨어를 생산하는데 필요한 반복적인 과정들을 정리한 것
* 구조적프로그래밍, 객체지향, 고속개발 방법론, 익스트림 프로그래밍(Agile), 스크럼(Agile), UP…..

## 애자일 개발 프로세스
- 앞을 예측하며 개발하지 않고, 일정한 주기를 가지고 끊임없이 프로토타입을 만들어내며 그때 그때 필요한 요구를 더하고 수정하여 하나의 커다란 소프트웨어를 개발해나가는 adaptive style
- 특정 개발 방법론을 가리키는 말은 아니고 “애자일(Agile=기민한, 좋은 것을 빠르고 낭비없게 만드는 것) 개발을 가능하게 해주는 다양한 방법론 전체를 일컫는 말
- 다른 고전적인 방법론과 구별되는 가장 큰 차이점은 less document-oriented, 즉 문서를 통한 개발방법이 아니라 code-oriented, 실질적인 코딩을 통한 방법론이다.

## UML(Unified Model Language)
- 표준화된 범용 모델링 언어
- 객체지향 소프트웨어 집약시스템을 개발할때 산출물을 명세화, 시각화, 문서화 할 때 사용
❖ 다이어그램만 그리는게 아니라 표준을 잘 지켜 만들었을때 코드까지 다 만들어짐

## TDD(Test Driven Development)
- 테스트주도개발
- 매우 짧은 개발 사이클을 반복하는 소프트웨어 개발 프로세스
- 코드가 제대로 동작 하는지 검증하는 코드를 따로 작성(사람이 테스트하지않는다)


1. 결함을 점검하는 자동화된 테스트 케이스를 작성(Write a test that fails)
2. 케이스를 통과하기 위한 최소한의 양의 코드를 생성(Make only enough code for it to pass)
3. 새 코드를 표준에 맞도록 리팩토링(improve code quality)

## PDD

- 계획기반개발
- Plan-driven development
- 계획을 세우고 그 계획을 실천하는데에 많은 시간과 노력을 할애하는 개발 방법

## 형상관리
- SW개발 및 유지보수 과정에서 발생하는 소스코드, 문서, 인터페이스 등 각종 결과물에 대해 형상을 만들고, 이들 형상에 대한 변경을 체계적으로 관리, 제어하기 위한 활동

## 버전관리
 * history를 남기기위한 목적이 강하다
 * 형상관리의 일부
 * 일반적인 소프트웨어 소스 코드만의 형상을 관리하는 것
 * SVN, Git, Mercurial, CVS….
## 프로젝트 관리
- 문서관리, 일정관리, 예산관리, 인력관리, 고객관리, 위험관리, 품질관리…..

## 프로그래밍 언어의 종류
- 고급언어에서 저급언어로 변환되는 과정에 따른 분류
    1. 컴파일 언어 : C, C++, Go…
    2. 바이트코드언어 : Java, C#…
    3. 인터프리터언어 : Basic, JavaScript, Python, Ruby …

* 바이트코드언어

* 자바가상머신 : 범용적인 이식성을 위해 성능부분을 잃고 가는 부분이 있다.



￼



##프로그래밍 패러다임에 따른 분류

* 객체지향 프로그래밍 패러다임 : 프로그램을 상호작용하는 객체들의 집합으로 표현
    - Objective-c, Python, Swift, C++, C#, Smalltalk, Perl, Ruby, Java …
* 함수형 프로그래밍 패러다임 : 프로그램을 상태값을 지니지 않는 함수값들의 연속으로 표현
    - Python, Swift, C++, C#, Perl, Ruby, Java …

##객체지향프로그래밍 패러다임

> 클래스     ➠    객체
				 실질적인 형태
				(클래스의 객체화)

1. Object-C
: C에 객체지향 개념을 얹었다.

	* 객체 - 클래스

##개발자-Developer
* 프로그램을 만드는 사람 - 프로그래머, 기획자, 디자이너
코딩을 한다면 소프트웨어 프로그래머라고 부르는게 좀 더 정확하겠다

* etc)엔지니어

##Server / Client
- 상대적 역할개념 : 데이터를 주는 놈이 서버, 받는 놈이 클라이언트



￼
##Thread
> 프로그램 내에서 작업이 실행되는 흐름의 단위

* Multi Thread - 다중스레드
: 하나의 프로세스 안에서 여러개로 나누어 처리하는 단위
* MultiTask - 멀티테스크
: 여러개의 프로세스를 동시에 처리하는 개념
☞ 멀티스레드 vs 멀티 태스크


## API
* Application Programming Interface
* 응용소프트웨어 프로그래밍 접합부
* 응용소프트웨어와 프레임워크 사이의 중간매체(방법)
* 소프트웨어 간의 통신을 위해 메시지를 전달하는 방식 등이 결정된 것


￼
￼
## Framework

## Cocoa Touch Framework + Object-c
## Android Framework + Java

## 디자인패턴
- MVC(Model-View-Controller)
- MVVM(Model-View-ViewModel)
- Observer
- Singleton
- Prototype

## 레퍼런스
## IDE
* Integrated Development Environment
* 통합개발환경

## SDK
* Software Development Kit
* 소프트웨어 개발에 필요한 도구의 모음
* IDE + Framework + Tools
