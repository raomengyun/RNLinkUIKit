//
//  RNTableViewMaker.h
//
//  Created by MuMu on 2016/12/6.
//  Copyright © 2016年 MuMu All rights reserved.
//

#import "RNScrollViewMaker.h"

@interface RNTableViewMaker : RNScrollViewMaker

- (instancetype)initWithStyle:(UITableViewStyle)style NS_DESIGNATED_INITIALIZER;

- (RNTableViewMaker *(^)(id <UITableViewDataSource>))dataSource;

- (RNTableViewMaker *(^)(id <UITableViewDelegate>))delegate;

- (RNTableViewMaker *(^)(CGFloat))rowHeight;

- (RNTableViewMaker *(^)(CGFloat))sectionHeaderHeight;

- (RNTableViewMaker *(^)(CGFloat))sectionFooterHeight;

- (RNTableViewMaker *(^)(CGFloat))estimatedRowHeight;

- (RNTableViewMaker *(^)(CGFloat))estimatedSectionHeaderHeight;

- (RNTableViewMaker *(^)(CGFloat))estimatedSectionFooterHeight;

- (RNTableViewMaker *(^)(UIEdgeInsets))separatorInset;

- (RNTableViewMaker *(^)(UIView *))backgroundView;

- (RNTableViewMaker *(^)(BOOL))editing;

- (RNTableViewMaker *(^)(BOOL))allowsSelection;

- (RNTableViewMaker *(^)(BOOL))allowsSelectionDuringEditing;

- (RNTableViewMaker *(^)(BOOL))allowsMultipleSelection;

- (RNTableViewMaker *(^)(BOOL))allowsMultipleSelectionDuringEditing;

- (RNTableViewMaker *(^)(NSInteger))sectionIndexMinimumDisplayRowCount;

- (RNTableViewMaker *(^)(UIColor *))sectionIndexColor;
- (RNTableViewMaker *(^)(unsigned long))sectionIndexColorFromHex;

- (RNTableViewMaker *(^)(UIColor *))sectionIndexBackgroundColor;
- (RNTableViewMaker *(^)(unsigned long))sectionIndexBackgroundColorFromHex;

- (RNTableViewMaker *(^)(UIColor *))sectionIndexTrackingBackgroundColor;
- (RNTableViewMaker *(^)(unsigned long))sectionIndexTrackingBackgroundColorFromHex;

- (RNTableViewMaker *(^)(UITableViewCellSeparatorStyle))separatorStyle;

- (RNTableViewMaker *(^)(UIColor *))separatorColor;
- (RNTableViewMaker *(^)(unsigned long))separatorColorFromHex;

- (RNTableViewMaker *(^)(UIVisualEffect *))separatorEffect;

- (RNTableViewMaker *(^)(UIView *))tableHeaderView;

- (RNTableViewMaker *(^)(UIView *))tableFooterView;

- (RNTableViewMaker *(^)(Class,NSString *))registerClass;
- (RNTableViewMaker *(^)(UINib *,NSString *))registerNib;

@end
