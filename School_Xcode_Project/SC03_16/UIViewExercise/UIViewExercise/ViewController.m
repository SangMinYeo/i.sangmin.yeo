//
//  ViewController.m
//  UIViewExercise
//
//  Created by SSangGA on 2017. 2. 3..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property UIView *exe11;
@property UIView *exe12;
@property UIView *exe13;

@property UIView *exe21;
@property UIView *exe22;
@property UIView *exe23;
@property UIView *exe24;
@property UIView *exe25;

@property UIView *exe31;
@property UIView *exe32;
@property UIView *exe33;
@property UIView *exe34;

@property UIView *exe41;
@property UIView *exe42;
@property UIView *exe43;
@property UIView *exe44;
@property UIView *exe45;
@property NSMutableArray *exe46;
@property NSMutableArray *exe47;
//@property UIView *exe46;
//@property UIView *exe47;
//@property UIView *exe48;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    // 1번문제
//    _exe11 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 64)];
//    _exe11.backgroundColor = [UIColor redColor];
//    [self.view addSubview:_exe11];
//    
//    _exe12 = [[UIView alloc] initWithFrame:CGRectMake(0, _exe11.frame.size.height, self.view.frame.size.width, self.view.frame.size.height-(64+48))];
//    _exe12.backgroundColor = [UIColor blueColor];
//    [self.view addSubview:_exe12];
//    
//    _exe13 = [[UIView alloc] initWithFrame:CGRectMake(0, _exe11.frame.size.height+_exe12.frame.size.height, self.view.frame.size.width, 48)];
//    _exe13.backgroundColor = [UIColor yellowColor];
//    [self.view addSubview:_exe13];
    
//    // 2번문제
//    _exe21 = [[UIView alloc] initWithFrame:CGRectMake(self.view.center.x-50, self.view.center.y-50, 100, 100)];
//    _exe21.backgroundColor = [UIColor grayColor];
//    _exe21.alpha = 0.8;
//    [self.view addSubview:_exe21];
//    
//    _exe22 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, _exe21.frame.size.width-10, _exe21.frame.size.height-90)];
//    _exe22.backgroundColor = [UIColor redColor];
//    [_exe21 addSubview:_exe22];
//    
//    _exe23 = [[UIView alloc] initWithFrame:CGRectMake(_exe21.frame.size.width-10, 0, _exe21.frame.size.width-90, _exe21.frame.size.height-10)];
//    _exe23.backgroundColor = [UIColor blueColor];
//    [_exe21 addSubview:_exe23];
//    
//    _exe24 = [[UIView alloc] initWithFrame:CGRectMake(0, _exe21.frame.size.height-90, _exe21.frame.size.width-90, _exe21.frame.size.height-10)];
//    _exe24.backgroundColor = [UIColor yellowColor];
//    [_exe21 addSubview:_exe24];
//    
//    _exe25 = [[UIView alloc] initWithFrame:CGRectMake(_exe21.frame.size.width-90, _exe21.frame.size.height-10, _exe21.frame.size.width-10, _exe21.frame.size.width-90)];
//    _exe25.backgroundColor = [UIColor greenColor];
//    [_exe21 addSubview:_exe25];
    
//    //3번문제
//    _exe31 = [[UIView alloc] initWithFrame:CGRectMake(0, self.view.center.y, self.view.frame.size.width, 80)];
//    _exe31.backgroundColor = [UIColor yellowColor];
//    [self.view addSubview:_exe31];
//    
//    _exe32 = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 60, 60)];
//    _exe32.backgroundColor = [UIColor redColor];
//    [_exe31 addSubview:_exe32];
//    
//    _exe33 = [[UIView alloc] initWithFrame:CGRectMake(_exe32.frame.size.width+20, 10, _exe31.frame.size.width-90, 40)];
//    _exe33.backgroundColor = [UIColor greenColor];
//    [_exe31 addSubview:_exe33];
//    
//    _exe34 = [[UIView alloc] initWithFrame:CGRectMake(_exe32.frame.size.width+20, 60, _exe31.frame.size.width-90, 10)];
//    _exe34.backgroundColor = [UIColor whiteColor];
//    [_exe31 addSubview:_exe34];

    //4번문제
    _exe41 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 168)];
    _exe41.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:_exe41];
    
    _exe42 = [[UIView alloc] initWithFrame:CGRectMake(_exe41.center.x-40, _exe41.frame.size.height-40, 80, 80)];
    _exe42.backgroundColor = [UIColor purpleColor];
    [_exe41 addSubview:_exe42];
    
    _exe43 = [[UIView alloc] initWithFrame:CGRectMake(_exe41.center.x-40, _exe41.frame.size.height+43, 80, 25)];
    _exe43.backgroundColor = [UIColor greenColor];
    [_exe41 addSubview:_exe43];
    
    _exe44 = [[UIView alloc] initWithFrame:CGRectMake(_exe41.center.x-40, _exe41.frame.size.height+70, 80, 13)];
    _exe44.backgroundColor = [UIColor blueColor];
    [_exe41 addSubview:_exe44];
    
    _exe45 = [[UIView alloc] initWithFrame:CGRectMake(0 , _exe41.frame.size.height+100, _exe41.frame.size.width, 45)];
    _exe45.backgroundColor = [UIColor grayColor];
    [_exe41 addSubview:_exe45];
//    UIImageView
    UILabel
    
    
    _exe46 = [[NSMutableArray alloc] init];
        for (NSUInteger xx=0; xx < 4 ; xx += 1)
    {
//        CGFloat width2 = _exe41.frame.size.width*(xx/4);
        UIView *temp = [[UIView alloc] initWithFrame:CGRectMake((self.view.frame.size.width/4)*xx, _exe41.frame.size.height+100, _exe41.frame.size.width/4, 45)];
        [_exe46 addObject:temp];
        [_exe41 addSubview:self.exe46[xx]];
        UIView *temp2 = [[UIView alloc] initWithFrame:CGRectMake((((self.view.frame.size.width/4)*xx)+5), _exe41.frame.size.height+105, (_exe41.frame.size.width/4-10), 5)];
        temp2.backgroundColor = [UIColor blueColor];
//        [_exe47 addObject:temp2];
//        [_exe46 addObjectsFromArray:_exe47];
        
    }
 
//    [self.exe46[1] setBackgroundColor:[UIColor blackColor]];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
