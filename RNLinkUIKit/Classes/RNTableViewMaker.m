//
//  RNTableViewMaker.m
//
//  Created by MuMu on 2016/12/6.
//  Copyright © 2016年 MuMu All rights reserved.
//

#import "RNTableViewMaker.h"
#import "UIColor+Hex.h"

@interface RNTableViewMaker(){
    UITableView *_tableViewMake;
    UITableViewStyle _tableStyle;
}

@end
@implementation RNTableViewMaker

- (instancetype)init {
    return [self initWithStyle:UITableViewStylePlain];
}

- (instancetype)initWithStyle:(UITableViewStyle)style {
    self = [super init];
    if (self) {
        self->_tableStyle = style;
    }
    return self;
}

- (id)make {
    if (!_tableViewMake) {
        _tableViewMake = [[UITableView alloc] initWithFrame:CGRectZero style:_tableStyle];
    }
    return _tableViewMake;
}

- (RNTableViewMaker *(^)(id<UITableViewDataSource>))dataSource {
    return ^(id<UITableViewDataSource> datasource){
        [self.make setDataSource:datasource];
        return self;
    };
}

- (RNTableViewMaker *(^)(id<UITableViewDelegate>))delegate {
    return ^(id<UITableViewDelegate> delegate){
        [self.make setDelegate:delegate];
        return self;
    };
}

- (RNTableViewMaker *(^)(CGFloat))rowHeight {
    return ^(CGFloat rowHeight){
        [self.make setRowHeight:rowHeight];
        return self;
    };
}

- (RNTableViewMaker *(^)(CGFloat))sectionHeaderHeight {
    return ^(CGFloat sectionHeaderHeight){
        [self.make setSectionHeaderHeight:sectionHeaderHeight];
        return self;
    };
}

- (RNTableViewMaker *(^)(CGFloat))sectionFooterHeight {
    return ^(CGFloat sectionFooterHeight){
        [self.make setSectionFooterHeight:sectionFooterHeight];
        return self;
    };
}

- (RNTableViewMaker *(^)(CGFloat))estimatedRowHeight {
    return ^(CGFloat estimatedRowHeight){
        [self.make setEstimatedRowHeight:estimatedRowHeight];
        return self;
    };
}

- (RNTableViewMaker *(^)(CGFloat))estimatedSectionHeaderHeight {
    return ^(CGFloat estimatedSectionHeaderHeight){
        [self.make setEstimatedSectionHeaderHeight:estimatedSectionHeaderHeight];
        return self;
    };
}

- (RNTableViewMaker *(^)(CGFloat))estimatedSectionFooterHeight {
    return ^(CGFloat estimatedSectionFooterHeight){
        [self.make setEstimatedSectionFooterHeight:estimatedSectionFooterHeight];
        return self;
    };
}

- (RNTableViewMaker *(^)(UIEdgeInsets))separatorInset {
    return ^(UIEdgeInsets separatorInset){
        [self.make setSeparatorInset:separatorInset];
        return self;
    };
}

- (RNTableViewMaker *(^)(UIView *))backgroundView {
    return ^(UIView *backgroundView){
        [self.make setBackgroundView:backgroundView];
        return self;
    };
}

- (RNTableViewMaker *(^)(BOOL))editing {
    return ^(BOOL editing){
        [self.make setEditing:editing];
        return self;
    };
}

- (RNTableViewMaker *(^)(BOOL))allowsSelection {
    return ^(BOOL allowsSelection){
        [self.make setAllowsSelection:allowsSelection];
        return self;
    };
}

- (RNTableViewMaker *(^)(BOOL))allowsSelectionDuringEditing {
    return ^(BOOL allowsSelectionDuringEditing){
        [self.make setAllowsSelectionDuringEditing:allowsSelectionDuringEditing];
        return self;
    };
}

- (RNTableViewMaker *(^)(BOOL))allowsMultipleSelection {
    return ^(BOOL allowsMultipleSelection){
        [self.make setAllowsMultipleSelection:allowsMultipleSelection];
        return self;
    };
}

- (RNTableViewMaker *(^)(BOOL))allowsMultipleSelectionDuringEditing {
    return ^(BOOL allowsMultipleSelectionDuringEditing){
        [self.make setAllowsMultipleSelectionDuringEditing:allowsMultipleSelectionDuringEditing];
        return self;
    };
}

- (RNTableViewMaker *(^)(NSInteger))sectionIndexMinimumDisplayRowCount {
    return ^(NSInteger sectionIndexMinimumDisplayRowCount){
        [self.make setSectionIndexMinimumDisplayRowCount:sectionIndexMinimumDisplayRowCount];
        return self;
    };
}

- (RNTableViewMaker *(^)(UIColor *))sectionIndexColor {
    return ^(UIColor *sectionIndexColor){
        [self.make setSectionIndexColor:sectionIndexColor];
        return self;
    };
}
- (RNTableViewMaker *(^)(unsigned long))sectionIndexColorFromHex {
    return ^(unsigned long hex){
        [self.make setSectionIndexColor:[UIColor rn_colorFromHexValue:hex]];
        return self;
    };
}

- (RNTableViewMaker *(^)(UIColor *))sectionIndexBackgroundColor {
    return ^(UIColor *sectionIndexBackgroundColor){
        [self.make setSectionIndexBackgroundColor:sectionIndexBackgroundColor];
        return self;
    };
}
- (RNTableViewMaker *(^)(unsigned long))sectionIndexBackgroundColorFromHex {
    return ^(unsigned long hex){
        [self.make setSectionIndexBackgroundColor:[UIColor rn_colorFromHexValue:hex]];
        return self;
    };
}

- (RNTableViewMaker *(^)(UIColor *))sectionIndexTrackingBackgroundColor {
    return ^(UIColor *sectionIndexTrackingBackgroundColor){
        [self.make setSectionIndexTrackingBackgroundColor:sectionIndexTrackingBackgroundColor];
        return self;
    };
}
- (RNTableViewMaker *(^)(unsigned long))sectionIndexTrackingBackgroundColorFromHex {
    return ^(unsigned long hex){
        [self.make setSectionIndexTrackingBackgroundColor:[UIColor rn_colorFromHexValue:hex]];
        return self;
    };
}

- (RNTableViewMaker *(^)(UITableViewCellSeparatorStyle))separatorStyle {
    return ^(UITableViewCellSeparatorStyle separatorStyle){
        [self.make setSeparatorStyle:separatorStyle];
        return self;
    };
}

- (RNTableViewMaker *(^)(UIColor *))separatorColor {
    return ^(UIColor *separatorColor){
        [self.make setSeparatorColor:separatorColor];
        return self;
    };
}
- (RNTableViewMaker *(^)(unsigned long))separatorColorFromHex {
    return ^(unsigned long hex){
        [self.make setSeparatorColor:[UIColor rn_colorFromHexValue:hex]];
        return self;
    };
}

- (RNTableViewMaker *(^)(UIVisualEffect *))separatorEffect {
    return ^(UIVisualEffect *separatorEffect){
        [self.make setSeparatorEffect:separatorEffect];
        return self;
    };
}

- (RNTableViewMaker *(^)(UIView *))tableHeaderView {
    return ^(UIView *tableHeaderView){
        [self.make setTableHeaderView:tableHeaderView];
        return self;
    };
}

- (RNTableViewMaker *(^)(UIView *))tableFooterView {
    return ^(UIView *tableFooterView){
        [self.make setTableFooterView:tableFooterView];
        return self;
    };
}

- (RNTableViewMaker *(^)(Class,NSString *))registerClass{
    return ^(Class class,NSString *identifier){
        [self.make registerClass:class forCellReuseIdentifier:identifier];
        return self;
    };
}

- (RNTableViewMaker *(^)(UINib *,NSString *))registerNib{
    return ^(UINib *nib,NSString *identifier){
        [self.make registerNib:nib forCellReuseIdentifier:identifier];
        return self;
    };
}

@end
