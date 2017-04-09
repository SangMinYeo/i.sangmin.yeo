//
//  ViewController.m
//  TestCoverFlow
//
//  Created by SSangGA on 2017. 3. 24..
//  Copyright © 2017년 ysm. All rights reserved.
//

#import "ViewController.h"
#import "CoverFlow.h"

@interface ViewController ()
<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@property (weak, nonatomic) IBOutlet CoverFlow *layout;
@property (weak, nonatomic) IBOutlet UICollectionView *mainCollectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.layout.minimumLineSpacing = -100.0f;
    self.layout.minimumLineSpacing = 5.0f;

    CGFloat leftInset = (self.mainCollectionView.frame.size.width - self.layout.itemSize.width) / 2.0f;
    self.layout.sectionInset = UIEdgeInsetsMake(0, leftInset, 0, leftInset);
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 30;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
