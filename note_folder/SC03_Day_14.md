# 스쿨 14일차


- 연습문제 풀이
    * 절대값구하기, 소숫점 3째자리 반올림, 덧셈뺄셈 후 절대값 결과
- 팀 과제
- 윤년구하기
- 윤년활용하여 마지막 날 구하기
- 두날을 받아서 D-day구하기

* stringByAppendingString
: string에 다른string를 추가로 붙인다.
* stringWithFormat
: 숫자를 포맷을 지정하여 string로 변환 후 표시

## For문
정해진 횟수만큼 구문 반복 실행
```Objective-C
for(NSInteger i = 0; i < 10 ; i++)
```
for 문을 일반적으로 많이 쓴다

```Objective-C
for (NSInteger i = 0; i < 3; i++)
{
	NSLog(@“반복문의 횟수는 %ld입니다”)
}
```
