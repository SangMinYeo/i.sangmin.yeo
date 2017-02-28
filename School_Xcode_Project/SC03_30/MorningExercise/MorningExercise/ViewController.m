//
//  ViewController.m
//  MorningExercise
//
//  Created by SSangGA on 2017. 2. 27..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
<UITextFieldDelegate>
@property NSUInteger primeNumber;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.primeNumber = [[self textFieldFrame] integerValue];
    
    
}

- (NSUInteger)setPrimeNumber:(NSUInteger)input
{
    NSMutableArray *a = @[];
    for (NSUInteger j = 3; j < input; j +=1) {
        for (NSUInteger i = 2; i < j; i +=1) {
            if(j % i == 0) {
                return nil;
            } return [a addObject:j];
    
    
        }
    }
    
}
     
- (NSString *)textFieldFrame
{
    
    UITextField *tf = [[UITextField alloc] initWithFrame:CGRectMake(100, 100, 200, 30)];
    tf.borderStyle = UITextBorderStyleBezel;
    tf.delegate = self;
    tf.placeholder = @"숫자를 입력하세요";
    [self.view addSubview:tf];
    return tf.text;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
