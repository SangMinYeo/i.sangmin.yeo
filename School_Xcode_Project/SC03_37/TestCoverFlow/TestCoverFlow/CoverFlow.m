//
//  CoverFlow.m
//  TestCoverFlow
//
//  Created by SSangGA on 2017. 3. 24..
//  Copyright © 2017년 ysm. All rights reserved.
//

#import "CoverFlow.h"

@implementation CoverFlow

-(NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect
{
    NSArray *attributesInRect = [super layoutAttributesForElementsInRect:rect];
    
    NSMutableArray *resultAttributeArray = [[NSMutableArray alloc] init];
    
    for (UICollectionViewLayoutAttributes *attribute in attributesInRect) {
        UICollectionViewLayoutAttributes *copyAttribute = [attribute copy];
        [resultAttributeArray addObject:copyAttribute];
        
        CGFloat collectionViewXCenter = self.collectionView.contentOffset.x + (self.collectionView.bounds.size.width / 2.0);
        
        CGFloat maxDistance = self.itemSize.width + self.minimumLineSpacing;
        CGFloat distance = MIN(fabs(attribute.center.x - collectionViewXCenter), maxDistance);
        
        CGFloat ratio = (maxDistance - distance) / maxDistance;
        
        CGFloat itemScale = 1.0f + (0.5f * ratio);
        CGFloat itemAlha = 0.5f + (0.5f * ratio);
        
        copyAttribute.alpha = itemAlha;
        copyAttribute.transform3D = CATransform3DScale(CATransform3DIdentity, itemScale, itemScale, 1); // 크기에 대한 내용
        copyAttribute.zIndex = 10 * itemAlha; //위치에 대한 내용
    }
    
    return resultAttributeArray;
}

-(BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds
{
    return YES;
}

-(CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)proposedContentOffset withScrollingVelocity:(CGPoint)velocity
{
    CGFloat actualXOffset = (proposedContentOffset.x + self.collectionView.bounds.size.width / 2.0f);
    NSArray *attributeArray = [self layoutAttributesForElementsInRect:self.collectionView.bounds];
    attributeArray = [attributeArray sortedArrayUsingComparator:^NSComparisonResult(UICollectionViewLayoutAttributes *  _Nonnull obj1, UICollectionViewLayoutAttributes * _Nonnull obj2) {
        if (fabs(obj1.center.x - actualXOffset) > fabs(obj2.center.x - actualXOffset) )
        {
            return NSOrderedDescending;
        } else if (fabs(obj1.center.x - actualXOffset) < fabs(obj2.center.x - actualXOffset) )
        {
            return NSOrderedAscending;
        } else {
            return NSOrderedSame;
        }
    }];
    CGFloat resultOffsetValue = ((UICollectionViewLayoutAttributes *)attributeArray.firstObject).center.x - (self.collectionView.bounds.size.width / 2.0f);
    CGPoint resultPoint = CGPointMake(resultOffsetValue, 0);
    return resultPoint;
}

@end
