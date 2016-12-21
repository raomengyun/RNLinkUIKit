//
//  RNLabelMaker.h
//
//  Created by MuMu on 2016/12/5.
//  Copyright © 2016年 MuMu All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RNViewMaker.h"

@interface RNLabelMaker : RNViewMaker

- (RNLabelMaker *(^)(NSString *))text;

- (RNLabelMaker *(^)(UIFont *))font;
- (RNLabelMaker *(^)(CGFloat))fontWithBoldSystemSize;
- (RNLabelMaker *(^)(CGFloat))fontWithSystemSize;

- (RNLabelMaker *(^)(UIColor *))textColor;
- (RNLabelMaker *(^)(unsigned long))textColorFromHex;

- (RNLabelMaker *(^)(UIColor *))shadowColor;
- (RNLabelMaker *(^)(unsigned long))shadowColorFromHex;

- (RNLabelMaker *(^)(CGSize))shadowOffset;

- (RNLabelMaker *(^)(NSTextAlignment))textAlignment;

- (RNLabelMaker *(^)(NSLineBreakMode))lineBreakMode;

- (RNLabelMaker *(^)(NSAttributedString *))attributedText;

- (RNLabelMaker *(^)(UIColor *))highlightedTextColor;
- (RNLabelMaker *(^)(unsigned long))highlightedTextColorFromHex;

- (RNLabelMaker *(^)(BOOL))highlighted;

- (RNLabelMaker *(^)(BOOL))enabled;

- (RNLabelMaker *(^)(NSInteger))numberOfLines;

- (RNLabelMaker *(^)(BOOL))adjustsFontSizeToFitWidth;

- (RNLabelMaker *(^)(UIBaselineAdjustment))baselineAdjustment;

- (RNLabelMaker *(^)(CGFloat))minimumScaleFactor;

- (RNLabelMaker *(^)(CGFloat))preferredMaxLayoutWidth;

@end
