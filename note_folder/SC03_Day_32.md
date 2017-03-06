#스쿨 32일차

##데이터 저장방법

* 파일저장 방법

	1.  Property List, SQLite, 아카이빙
	2.  iOS DabaBase - CoreData
	3. 	 Network - Server DB이용


## Property List
- 좌측에는 키값, 우측에는 타입과 값 (딕셔너리 형태)
- 심플한 파일 저장 방법중 하나
- Key, Value구조로 데이터 저장
- File 형태로 저장되다보니 외부에서 Access가능(보안취약)
(그러나 핸드폰의 보안을 뚫어야 가능)

####파일 위치
- 파일이 저장되는 곳 Bundle & Documents폴더
- Bundle은 프로젝트에 추가된 Resource가 모인 곳
- 프로그램이 실행되어 저장하는 파일은 Documents폴더에 저장된다.

_즉! Plist파일의 데이터만 불러오는 역할은 Bundle을 통해서, plist파일에 데이터를 쓰고 불러오는 역할은 Documents 폴더에 저장된 파일로._