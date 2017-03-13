//
//  ViewController.m
//  ClassContents_Thread
//
//  Created by SSangGA on 2017. 3. 13..
//  Copyright © 2017년 ysm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *t_label;
@property (weak, nonatomic) IBOutlet UIButton *startBtn;
@property NSThread *thd;
@property BOOL yn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.yn = YES;
    
    
}
- (IBAction)didClicked:(id)sender {
    self.thd = [[NSThread alloc] initWithTarget:self selector:@selector(mainThreadSetText:) object:nil];
    [self threadExec:sender];
    

}

- (void)threadExec:(NSString *)str
{
    if (self.yn == YES) {
        [self.thd start];
        self.yn = NO;
    } else {
        [self.thd cancel];
        self.yn = YES;
    }
    
}

-(void)mainThreadSetText:(NSString *)text
{
    for(int i = 0; i < 100; i+=1)
    {
        NSLog(@"%d",i);
        sleep(1);
        [self performSelectorOnMainThread:@selector(mainThreadSetText:) withObject:[NSString stringWithFormat:@"%d",i] waitUntilDone:YES];
    }
    self.t_label.text = text;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
