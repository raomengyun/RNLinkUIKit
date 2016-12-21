//
//  RNButtonMaker.h
//
//  Created by MuMu on 2016/12/6.
//  Copyright © 2016年 MuMu All rights reserved.
//

#import "RNControlMaker.h"

@interface RNButtonMaker : RNControlMaker

- (instancetype)initWithButtonType:(UIButtonType)buttonType NS_DESIGNATED_INITIALIZER;

- (RNButtonMaker *(^)(UIEdgeInsets))contentEdgeInsets;
- (RNButtonMaker *(^)(UIEdgeInsets))titleEdgeInsets;
- (RNButtonMaker *(^)(UIEdgeInsets))imageEdgeInsets;

- (RNButtonMaker *(^)(BOOL))reversesTitleShadowWhenHighlighted;
- (RNButtonMaker *(^)(BOOL))adjustsImageWhenHighlighted;
- (RNButtonMaker *(^)(BOOL))adjustsImageWhenDisabled;
- (RNButtonMaker *(^)(BOOL))showsTouchWhenHighlighted;

- (RNButtonMaker *(^)(UIColor *))tintColor;
- (RNButtonMaker *(^)(unsigned long))tintColorFromHex;

- (RNButtonMaker *(^)(NSString *,UIControlState))titleForState;
- (RNButtonMaker *(^)(UIColor *,UIControlState))titleColorForState;
- (RNButtonMaker *(^)(unsigned long,UIControlState))titleColorFromHexForState;
- (RNButtonMaker *(^)(UIColor *,UIControlState))titleShadowColorForState;
- (RNButtonMaker *(^)(unsigned long,UIControlState))titleShadowColorFromHexForState;

- (RNButtonMaker *(^)(NSAttributedString *,UIControlState))attributeTitleForState;

- (RNButtonMaker *(^)(UIImage *,UIControlState))imageForState;
- (RNButtonMaker *(^)(NSString *,UIControlState))localImageForState;
- (RNButtonMaker *(^)(UIImage *,UIControlState))backgroundImageForState;
- (RNButtonMaker *(^)(NSString *,UIControlState))localBackgroundImageForState;

- (RNButtonMaker *(^)(UIFont *))font;
- (RNButtonMaker *(^)(CGFloat))fontWithSystemSize;

@end
