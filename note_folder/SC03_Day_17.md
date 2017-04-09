# 스쿨 17일차

## delegate, TextField
* Protocol
  - 복수의 컴퓨터 사이나 중앙 컴퓨터와 단말기 사이에서 데이터 통신을 원활하게 하기 위해 필요한 통신 규약.
  - 신호송신의 순서, 데이터의 표현법, 오류 검출법 등을 정함.

객체지향에선 두 클래스 간의 약속!
- 이런 이름의 함수를 만들어라.
* Objective-C에선 Delegate라는 이름으로 사용한다
* Protocol인데 Delegate패턴을 이용한 Protocol전달 방식을 이용하므로 Delegate라고 부르지 결과적으론 Protocol이다.


## Delegate- 선언

```Objective-C
@protocol CustomClassDelegate; //알려주기 위해 @protocol을 쓴다.
@interface CustomClass : SuperObject

@property (nonatomic, weak) id <CustomClassDelegate> delegate;

@end
```
```Objective-C
@protocol CustomClassDelegate <NSObject>
- (void)customClassMethod:(CustomClass*)sender;
@end
```
```Objective-C
@protocol MyViewDelegate;

@interface MyView : UIView

@property (weak) id<MyViewDelegate> delegate;

@end
```
```Objective-c
@protocol MyViewDelegate <NSObject>

- (void)didSelectedBtn:(UIButton*)btn;
@end
```

## UITextField
> 사용자 입력을 위한 UIComponent

* 주요항목
  - text
  - font
  - textColor
  - textAlignment
  - borderStyle
  - placeholder
  - background
  - UITextFieldDelegate


## UITextFieldDelegate
```Objective-c
@protocol UITextFieldDelegate <NSObject>

@optional
textFieldShouldBeginEditing:(UITextField*)textField;
//입력 글자수 길이 검사시 매번 검사하여 글자수 넘어설때 막음
textFieldDidBeginEditing:(UITextField*)textfield;
textFiledShouldEndEditing:(UITextField*)textfield;
textFieldShouldClear:(UITextField*)textField;
textFieldShouldReturn:(UITextField*)textField;
```
