# 스쿨 15일차

# iOS구조

기본적인 구조의 흐름

그림 삽입 필요

✔︎ UI Base Guide

# Resolutions
- Pixel : 실제 이미지 사이즈
- Point : 화면에 표시되는 이미지 사이즈

- 320×568포인트 /640×1136픽셀 = 아이폰5

- 375×667포인트/ 750×1334 픽셀 = 아이폰 6

- 414×736포인트  / 1242×2208픽셀 = 아이폰 6Plus

☞ 디자이너한테는 픽셀을 알려주고
개발할때는 포인트로 개발한다

## 좌표계
- 맨좌측 상단이 시작점
- x는 우측으로 증가
- y는 하단으로 증가

>View는 포토샵의 레이어 처럼 뷰들의 층층이 겹으로 이루어져있다.
>항상 좌표는 현재의 View가 소속된 부모View의 0,0에서 시작한다.

## What is Framework

## UIKit Framework
☞ 현재까지 실습에서는 Foundation Framework에 있는 NS~들을 썼었고
앞으로는 UIKit Framework에서 갖다쓸 것이다.

* import “.h”로 추가한다.


## NSObject Hierachy
![NSObject](https://github.com/SangMinYeo/i.sangmin.yeo/blob/master/note_folder/image/nsobject_hierarchy.jpg?raw=true)
## UIResponder
## UIView
- 가장기본이 되는 View (모든 View의 최상단)
- UIComponent들의 조합으로 화면이 구성되며 UIView를 상속받았다. 즉 iOS 화면구성은 UIView의 집합으로 되어 있다.
## UIView Class
