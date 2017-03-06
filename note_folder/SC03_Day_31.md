#스쿨 31일차

##UIAlertController
> 7.0 이전에는 View이었으나 그 이후 AlertController로 바뀜

- ActionSheet
> 아래에서 위로 올라옴

- Alert는 경고 느낌. 예외사항이 발생했을때 경고창 띄움.

내용을 보면 ViewController를 상속받고 ViewController객체를 만들어 present해주고 그 위에 메세지 및 버튼이 담긴 view를 올린 형태이므로 이런 원리를 이용해 CustomView를 만들 수 있다.


##UIGestureRecognizer
> 사용자의 입력을 전달 받을 수 있는 방법을 제공, 
Touch Bigin, Touch Move 등을 인식

✧ 3D 터치랑은 상관없다.
UIGestureRecognizer Delegate

##UIImagePickerController
> 이미 만들어져 있는 Controller이라서 변경에 제약이 많다. 그냥 카메라 앨범을 가장 간단히 가져올 경우에 사용함.

* AVFrameWork를 import를 받아야 찍거나 조작이 가능.
* 