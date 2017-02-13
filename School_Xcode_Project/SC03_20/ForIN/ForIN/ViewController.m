//
//  ViewController.m
//  ForIN
//
//  Created by SSangGA on 2017. 2. 9..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property NSArray *list;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    NSArray *list = [[NSArray alloc] initWithObjects:@"1",@"2",@"3",@"4",@"5", nil];
//    NSArray *list2 =@[@"1",@"2",@"3",@"4",@"5"];
//    
//    NSDictionary *dic = [[NSDictionary alloc] initWithObjectsAndKeys:@"joo",@"key",@"joo1",@"key1", nil];
//            
//    NSDictionary *dic2 = @{@"key0":@"value0",@"key1":@"value1",@"key2":@"value2"};
    
    
//    NSDictionary *dic = [[NSDictionary alloc] initWithObjects:@[@"joo",@"joo1",@"joo2"] forkeys:@[@"key1", @"key2",@"key3"];
    
//    for (NSInteger i = 0; i < list.count; i++) {
//    NSString *num = [list objectAtIndex:i];
//    NSLog(@"%@",num);
//    }
//    
//    for (NSString *num in list2){
//    NSLog(@"%@", num);
//     
//    }
//    
//    for (NSString *key in dic2) {
//        NSString *str = [dic2 objectForKey:key];
//        NSLog(@"%@",str);
//    }
//    
//    NSString *resultStr = @"";
//    for (NSString *key in dic2) {
//        NSString *str = [dic2 objectForKey:key];
//        resultStr = [resultStr stringByAppendingString:[NSString stringWithFormat:@"%@|",str]];
//    }
//    
//}

    
//    self.list = @[@1,@1,@3,@3,@6,@7,@8];
    self.list = @[@1,@5,@4,@1,@9,@5,@4,@1];
//    self.list = @[@1,@5,@4,@1,@9,@5,@4,@1];
    [self removeSameNum:self.list];
    
}

- (NSArray *)removeSameNum:(NSArray *)inputArray
{
    BOOL yn = NO;
    NSMutableArray *arrayList = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < self.list.count; i+=1) {
        if ([self.list objectAtIndex:i] == [arrayList objectAtIndex:i]) {
            yn = YES;
        } else {
            yn = NO;
        arrayList = [self.list objectAtIndex:i];
        }


}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
