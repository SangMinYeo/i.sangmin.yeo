//
//  ViewController.m
//  BubbleSort
//
//  Created by SSangGA on 2017. 2. 9..
//  Copyright © 2017년 SSangGA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property NSArray *bubble;
@property NSArray *result;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    

    self.bubble = @[@3,@7,@5,@6,@2,@1];
    
    [self bubbleSort:self.bubble];
    
}
- (NSArray *)bubbleSort:(NSArray *)unSortedList{
    NSMutableArray *sorting = [[NSMutableArray alloc] initWithArray:unSortedList];
    for (NSInteger j=0; j < sorting.count; j+=1) {
        for (NSInteger i=0; i < sorting.count-1; i+=1){
            NSNumber *compareA = [sorting objectAtIndex:i];
            NSNumber *compareB = [sorting objectAtIndex:i+1];
            if (compareA > compareB) {
                NSNumber *temp = compareB;
                compareB = compareA;
                compareA = temp;
                [sorting replaceObjectAtIndex:(NSInteger)i withObject:compareA];
                [sorting replaceObjectAtIndex:(NSInteger)i+1 withObject:compareB];
            }
        }
    }
    NSLog(@"%@",sorting);
    return sorting;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
