//
//  RNCollectionViewMaker.m
//
//  Created by MuMu on 2016/12/7.
//  Copyright © 2016年 MuMu All rights reserved.
//

#import "RNCollectionViewMaker.h"

@interface RNCollectionViewMaker(){
    UICollectionView *_collectionViewMaker;
}

@end
@implementation RNCollectionViewMaker

- (id)make {
    if (!_collectionViewMaker) {
        _collectionViewMaker = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:[UICollectionViewFlowLayout new]];
    }
    return _collectionViewMaker;
}

- (RNCollectionViewMaker *(^)(UICollectionViewLayout *))collectionViewLayout {
    return ^(UICollectionViewLayout *collectionViewLayout) {
        [self.make setCollectionViewLayout:collectionViewLayout];
        return self;
    };
}

- (RNCollectionViewMaker *(^)(id<UICollectionViewDataSource>))dataSource {
    return ^(id<UICollectionViewDataSource> datasource){
        [self.make setDataSource:datasource];
        return self;
    };
}
- (RNCollectionViewMaker *(^)(id<UICollectionViewDelegate>))delegate {
    return ^(id<UICollectionViewDelegate> delegate){
        [self.make setDelegate:delegate];
        return self;
    };
}

- (RNCollectionViewMaker *(^)(UIView *))backgroundView {
    return ^(UIView *backgroundView){
        [self.make setBackgroundView:backgroundView];
        return self;
    };
}

- (RNCollectionViewMaker *(^)(BOOL))allowsSelection {
    return ^(BOOL enable) {
        [self.make setAllowsSelection:enable];
        return self;
    };
}
- (RNCollectionViewMaker *(^)(BOOL))allowsMultipleSelection {
    return ^(BOOL enable) {
        [self.make setAllowsMultipleSelection:enable];
        return self;
    };
}

- (RNCollectionViewMaker *(^)(Class,NSString *))registCellClass {
    return ^(Class class,NSString *identifier){
        [self.make registerClass:class forCellWithReuseIdentifier:identifier];
        return self;
    };
}
- (RNCollectionViewMaker *(^)(UINib *,NSString *))registCellNib {
    return ^(UINib *nib,NSString *identifier){
        [self.make registerNib:nib forCellWithReuseIdentifier:identifier];
        return self;
    };
}

- (RNCollectionViewMaker *(^)(Class,NSString *,NSString *))registSupplementaryClass {
    return ^(Class class,NSString *kind,NSString *identifier){
        [self.make registerClass:class forSupplementaryViewOfKind:kind withReuseIdentifier:identifier];
        return self;
    };
}
- (RNCollectionViewMaker *(^)(UINib *,NSString *,NSString *))registSupplementaryNib {
    return ^(UINib *nib,NSString *kind,NSString *identifier){
        [self.make registerNib:nib forSupplementaryViewOfKind:kind withReuseIdentifier:identifier];
        return self;
    };
}

@end
