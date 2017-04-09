//
//  ViewController.m
//  UIAlertClassContents
//
//  Created by SSangGA on 2017. 3. 2..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"
//#import "UIAlertController.h"

@interface ViewController ()
<UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *alertBtn;
@property (weak, nonatomic) IBOutlet UIButton *actionBtn;
@property (weak, nonatomic) IBOutlet UIButton *nextBtn;
//@property (weak, nonatomic) IBOutlet UIButton *photo;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
   }

-(IBAction)goPhotoBtn:(id)sender
{
    UIAlertController *photoLib = [UIAlertController alertControllerWithTitle:nil message:@"사진앨범 또는 카메라롤을 선택하세요" preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *photoAction = [UIAlertAction actionWithTitle:@"포토 라이브러리" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        UIImagePickerController *libController = [[UIImagePickerController alloc] init];
        libController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        libController.allowsEditing = NO;
        libController.delegate = self;
        [self presentViewController:libController animated:YES completion:nil];
        
        
        [photoLib dismissViewControllerAnimated:YES completion:nil];
      
        
        NSLog(@"포토라이브러리가 선택됨");
    }];
    UIAlertAction *camAction = [UIAlertAction actionWithTitle:@"카메라 롤" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action)
    {
        UIImagePickerController *camController = [[UIImagePickerController alloc] init];
        camController.sourceType = UIImagePickerControllerSourceTypeCamera;
//        camController.mediaTypes = [UIImagePickerController avail ]
        camController.allowsEditing = NO;
        camController.delegate = self;
        [self presentViewController:camController animated:YES completion:nil];

        [photoLib dismissViewControllerAnimated:YES completion:nil];
        NSLog(@"카메라롤이 선택됨");
    }];
    [photoLib addAction:photoAction];
    [photoLib addAction:camAction];
    [self presentViewController:photoLib animated:YES completion:nil];
}

//- (void)didPhotoLibClicked:(UIAlertAction *)sender
//{
//    UIImagePickerController *libController = [[UIImagePickerController alloc] init];
//    libController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
//    libController.allowsEditing = NO;
//    libController.delegate = self;
//    [self presentViewController:libController animated:YES completion:nil];
//}

//- (void)didCamClicked:(UIAlertAction *)sender
//{
//    UIImagePickerController *camController = [[UIImagePickerController alloc] init];
//    camController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
//    camController.allowsEditing = NO;
//    camController.delegate = self;
//    [self presentViewController:camController animated:YES completion:nil];
//}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info
{
    NSLog(@"info %@", info);
    /*
    UIImage *image = [info objectForKey:UIImagePickerControllerMediaType];
     /*/
    UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
    //*/
    self.imgView.image = image;
    [self dismissViewControllerAnimated:YES completion:nil];
}


- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
}


-(IBAction)goNextBtn:(id)sender
{
    UIViewController *SVC = [self.storyboard instantiateViewControllerWithIdentifier:@"GestureViewController"];
    [self presentViewController:SVC animated:YES completion:nil];
    NSLog(@"다음 페이지");
}

- (IBAction)alertClick:(id)sender
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"로그인 실패" message:@"아이디 또는 암호가 틀렸습니다" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action)
    {
        NSLog(@"ok버튼이 클릭되었습니다");
    }];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"취소" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action){
        NSLog(@"cancel");
    }];
    
    
    [alertController addAction:okAction];
    [alertController addAction:cancelAction];
    

}


- (IBAction)actionSheet:(id)sender
{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"확인" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action)
    {
        NSLog(@"ok버튼이 클릭되었습니다");
    }];
//    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"취소" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
//        NSLog(@"cancel");
//    }];
    
    
    [alertController addAction:okAction];
//    [alertController addAction:cancelAction];
    [self presentViewController:alertController animated:YES completion:nil];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
