#Segue

- 앱의 인터페이스 흐름을 정의하는데 사용
- Segue는 앱의 스토리 보드 파일에 두개의 뷰 컨트롤러 사이의 전환을 정의
- Segue의 시작점은  button, tableView의 row, gesture등으로 시작하며 끝점은 진행될 다음 ViewController 임


###Modifying a Segue's Behavior at Runtime

![자료이미지](/Users/ssangga/Desktop/SchoolCourse/i.sangmin.yeo/note_folder/VCPG_displaying-view-controller-using-segue_9-4_2x.png)

###Unwind Segue
1. 되돌아갈 ViewController선택
2. 선택된 ViewController에 다음 메소드 정의
```objc
- (IBAction)myUnwindAction:(UIStoryboardSegue *)unwindSegue
```
3. unwind Segue 액션이 필요한 뷰컨트롤러에 액션과 Exit연결

###Manual Segue
	[self performSegueWithIdentifier:@"segueName" sender:self];
> Segue를 가지고만 있다가 위 코드를 실행하면 Segue가 실행된다. 즉 원하는 시점에 위 코드를 삽입하면 된다.

###SizeClass
1. InterfaceBuilder는 기본적으로 size Classes를 사용한다.
2. Size Class는 사용자 인터페이스 요소에 지정된 특성으로 요소의 크기를 구분하여 줍니다.
3. 현재 Size Class를 기반으로 많은 요소를 사용자 정의를 할 수 있습니다. 정의 된 내용은 레이아웃이 변경될때 자동으로 조정됩니다.
4. 다음과 같은 내용을 조정할 수 있습니다.
	- Install or uninstall a view or control
	- install or uninstall a constraint
	- Set the value of select attributes (for example, fonts and layout margin settings)




	
