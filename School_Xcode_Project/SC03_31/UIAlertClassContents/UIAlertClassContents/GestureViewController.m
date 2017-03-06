//
//  GestureViewController.m
//  UIAlertClassContents
//
//  Created by SSangGA on 2017. 3. 2..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "GestureViewController.h"

@interface GestureViewController ()
<UIGestureRecognizerDelegate>
@property UITapGestureRecognizer *tapGesture;
@property (weak, nonatomic) IBOutlet UILabel *touchCount;
@property NSString *count;
@property NSString *location;

@end

@implementation GestureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tapGesture.delegate = self;
//    self.tapGesture.numberOfTapsRequired = 1;
    self.tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(didtap:)];
    [self.view addSubview:self.touchCount];
    [self.view addGestureRecognizer:self.tapGesture];

}
-(void)didtap:(UITapGestureRecognizer *)sender
{
    [self.touchCount setText:self.count];
    [self.touchCount setText:self.location];
    
    NSLog(@"didtap");
    
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
    self.count = [NSString stringWithFormat:@"횟수:%ld",touch.tapCount];
    CGPoint xy = [touch locationInView:self.view];
    self.location = [NSString stringWithFormat:@"(%lf,%lf)",xy.x,xy.y];
                          
    return YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
