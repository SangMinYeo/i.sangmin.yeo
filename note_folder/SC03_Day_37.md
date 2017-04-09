#클라이언트 서버 모델(client-server model)
> 어떤 연결을 통해 컴퓨터의 자원을 공유하는 것

###Protocol
> 컴퓨터끼리 또는 컴퓨터와 단말기 사이에 상호통신 할 때 데이터를 에러없이 원할하고 신뢰성있게 주고받기 위해 필요한 약속을 규정하는 것으로서 통신 규약이라고도 한다.

###URL
>

###URI
>


###Rest(Representational State Transfer)
> WWW와 같은 분산 하이퍼미디어 시스템을 위한 소프트웨어 아키텍처의 형식. 엄격한 의미로 REST는 네트워크 아키텍처 원리의 모음이다. 여기서 '네트워크 아키텍처'란 자원을 정의하고 자원에 대한 주소를 지정하는 방법 전반을 일컫는다.

###REST사용원칙
- Resource : URI들은 쉽게 자원의 내용을 이해 할 수 있게 만들어야한다.
- Representations : 객체와 속성을 나타내는 데이터를 JSON이나 XML구조로 변환해서 표현한다.
- Messages : HTTP Methods
- Stateless : Server와 Client의 요청사항은 저장하지 않는다. Clien는 session상태를 유지한다.

 
###HTTP Request
 - URI를 이용해서 Server에 데이터를 요청한다.
 - 크게 Header와 Body구조로 나눌 수 있다.
 
  HTTP Method | CRUD
  POST | Create
  GET | Read
  PUT | Update/Replace
  PATCH | Update/Modify
  DELETE | Delete
  
  
###Request구조
Request Line (ex: GET /index HTTP/1.1)
Header(general-header | request-header | entity-header)
[message-body]

###Request Header
* host : The domain name of the server (for virtual hosting), and the TCP port number on which the server is listening
* Accept : Content-Types that are acceptable for the response. See Content negotiation
* User-Agent : The user agent srting of the user agent

기타 등등	GET /basefile HTTP/1.1
		Host : naver.com
		Accept : text/plain
		Content-Encoding "gzip"
		
###Contents Type
- 서버, 클라이언트 간의 어떠한 데이터를 주고 받을 수 있는지를 명시하는 타입
- 대표 Type종류

	1) Multipart Related MIME 타입
	* Content-Type : Multipart/related
	
	2)XML Media타입
	* Content-Type : text/xml
	* Content-Type : Application/xml
	
	3)Application
	* Content-Type : Application/json
	* Content-Type : Application/x-www-form-urlencode
	
	4)오디오타입
	* Content-Type : audio/mpeg <---MP3 or other MPEG audio
	
	5)Multipart타입
	* Content-Type : Multipart/formed-data <--파일첨부

###Message Body
* Get HTTP Method의 파라미터는 URL에 포함시켜 정보를 보낸다.
> ex)http://siteURI/age?first?Name=joo&lastName=ym

##iOS NEtwork
* NSURLSession 

> 세션 생성에 대한 내용. Server에 데이터를 요청 할 수 있는 가장 손쉬운 API

- NSURLConnection을 대체하기 위해 나온 새로운 클래스. 보다 쉽고 강력한 기능 
(Background Download/Upload)

- Code

```
sharedSession
sessionWithConfiguration
```
###NSURLSessionConfiguration
- Session설정에 관련된 객체. 아래 3가지중 하나와 함께 생성되며 그 외에도 타임아웃 캐시 정책 또는 추가적인 HTTP헤더와 같은 여러 property를 설정할 수 있게 해준다.

Task의 3가지
	* NSURLSessionDataTask : HTTP Get요청으로 서버로부터 정보를 가져오는 작업
	* NSURLSessionUploadTask : 디스크로부터 웹서버로 파일을 업로드 하는 작업을 수행. 주로 HTTP POST, PUT을 사용
	* NSURLSessionDownloadTask : 서버로부터 파일을 다운로드 하는 작업
	
###ATS(App Transport Security)
iOS9 이상의 버전에는 ATS기술이 기본적으로 적용된다. ATS는 앱과 웹 서비스 간 연결보안을 강화하는 기술로 이 기술이 적용되면 기존에 iOS앱에서 사용하던 암호화되지 않는 HTTP통신은 OS내부에서 강제적으로 차단된다.
ATS설정은 info.plist  파일에서 새로운 row를 추가하여 할 수 있다.

![이미지](/Users/ssangga/Desktop/스크린샷 2017-03-15 오후 2.49.11.png)



* NSURLRequest

> 데이터 요청에 대한 내용


##네트워크 2일차

###Using HTTP Request
url
메소드
바디
컨텐츠 타입

##네트워크 3일차

##Data Form
바운더리
컨텐츠 디스포션		이게 하나의 블록
컨텐츠 타입
실제데이터

바운더리
컨텐츠 디스포션		이게 하나의 블록
실제데이터














 