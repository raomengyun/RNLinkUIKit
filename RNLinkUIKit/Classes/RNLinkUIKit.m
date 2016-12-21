//
//  RNLinkUIKit.m
//
//  Created by MuMu on 2016/12/5.
//  Copyright © 2016年 Chongqing ZhuBaJie Network Co. Ltd. All rights reserved.
//

#import "RNLinkUIKit.h"
#import <objc/runtime.h>

@implementation RNLinkUIKit

+ (RNLabelMaker *)label {
    return [[RNLabelMaker alloc] init];
}

+ (RNViewMaker *)view {
    return [[RNViewMaker alloc] init];
}

+ (RNImageViewMaker *)imageView {
    return [[RNImageViewMaker alloc] init];
}

+ (RNScrollViewMaker *)scrollView {
    return [[RNScrollViewMaker alloc] init];
}

+ (RNTableViewMaker *)tableView {
    return [[RNTableViewMaker alloc] init];
}

+ (RNTableViewMaker *(^)(UITableViewStyle))tableViewWithStyle {
    return ^(UITableViewStyle style) {
        RNTableViewMaker *tableView = [[RNTableViewMaker alloc] initWithStyle:style];
        return tableView;
    };
}

+ (RNControlMaker *)control {
    return [[RNControlMaker alloc] init];
}

+ (RNButtonMaker *)button {
    return [[RNButtonMaker alloc] init];
}

+ (RNButtonMaker *(^)(UIButtonType))buttonWithType{
    return ^(UIButtonType type){
        return [[RNButtonMaker alloc] initWithButtonType:type];
    };
}

+ (RNTextViewMaker *)textView {
    return [[RNTextViewMaker alloc] init];
}

+ (RNTextViewMaker *(^)(CGSize containerSize))textViewWithContainerSize{
    return ^(CGSize containerSize){
        RNTextViewMaker *textView = [[RNTextViewMaker alloc] initWithTextContainer:containerSize];
        return textView;
    };
}

+ (RNCollectionViewMaker *)collectionView {
    return [[RNCollectionViewMaker alloc] init];
}

@end
