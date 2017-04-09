# 스쿨 16일차

```Objective-C
initWithContentsOfFile
[UIImage imageNamed: “파일이름”];
```

## UIControl

- BOOL enabled
- BOOL selected
- BOOL highlighted
- addTarget:(nullable id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;

## UIButton
* 사용자의 이벤트를 받아 처리해주는 UI
* 버튼구조 : Title, Image, backgroundImage

- UIImageView두개와 버튼 하나가 셋트로 구성됨.
- 텍스트가 없을땐 currentImage가 center정렬됨.

* 속성
    - Type : 버튼 기본 타입제공
    - UIButtonTypeCustom
    - UIButtonTypeSystem
    - UIButtonTypeInfoLight,
    - UIButtonTypeContactAdd
* State Config
  - (UIControlState)


 * 자판기 숙제 : [자판기 소스](https://github.com/SangMinYeo/i.sangmin.yeo/tree/master/homework/SellingMachine)
