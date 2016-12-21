//
//  RNLinkUIKit.h
//
//  Created by MuMu on 2016/12/5.
//  Copyright © 2016年 Chongqing ZhuBaJie Network Co. Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RNViewMaker.h"
#import "RNLabelMaker.h"
#import "RNImageViewMaker.h"
#import "RNScrollViewMaker.h"
#import "RNTableViewMaker.h"
#import "RNControlMaker.h"
#import "RNButtonMaker.h"
#import "RNTextViewMaker.h"
#import "RNCollectionViewMaker.h"

@interface RNLinkUIKit : NSObject

@property (class, nonatomic, strong, readonly) RNLabelMaker *label;
@property (class, nonatomic, strong, readonly) RNViewMaker *view;
@property (class, nonatomic, strong, readonly) RNImageViewMaker *imageView;
@property (class, nonatomic, strong, readonly) RNScrollViewMaker *scrollView;
@property (class, nonatomic, strong, readonly) RNTableViewMaker *tableView;
@property (class, nonatomic, strong, readonly) RNTableViewMaker *(^tableViewWithStyle)(UITableViewStyle);
@property (class, nonatomic, strong, readonly) RNControlMaker *control;
@property (class, nonatomic, strong, readonly) RNButtonMaker *button;
@property (class, nonatomic, strong, readonly) RNButtonMaker *(^buttonWithType)(UIButtonType);
@property (class, nonatomic, strong, readonly) RNTextViewMaker *textView;
@property (class, nonatomic, strong, readonly) RNTextViewMaker *(^textViewWithContainerSize)(CGSize);
@property (class, nonatomic, strong, readonly) RNCollectionViewMaker *collectionView;


@end
