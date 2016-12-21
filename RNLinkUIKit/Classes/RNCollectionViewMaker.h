//
//  RNCollectionViewMaker.h
//
//  Created by MuMu on 2016/12/7.
//  Copyright © 2016年 MuMu All rights reserved.
//

#import "RNScrollViewMaker.h"

@interface RNCollectionViewMaker : RNScrollViewMaker

- (RNCollectionViewMaker *(^)(UICollectionViewLayout *))collectionViewLayout;

- (RNCollectionViewMaker *(^)(id<UICollectionViewDataSource>))dataSource;
- (RNCollectionViewMaker *(^)(id<UICollectionViewDelegate>))delegate;

- (RNCollectionViewMaker *(^)(UIView *))backgroundView;

- (RNCollectionViewMaker *(^)(BOOL))allowsSelection;
- (RNCollectionViewMaker *(^)(BOOL))allowsMultipleSelection;

- (RNCollectionViewMaker *(^)(Class,NSString *))registCellClass;
- (RNCollectionViewMaker *(^)(UINib *,NSString *))registCellNib;

- (RNCollectionViewMaker *(^)(Class,NSString *,NSString *))registSupplementaryClass;
- (RNCollectionViewMaker *(^)(UINib *,NSString *,NSString *))registSupplementaryNib;

@end
