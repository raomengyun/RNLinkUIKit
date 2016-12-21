//
//  RNLabelMaker.m
//
//  Created by MuMu on 2016/12/5.
//  Copyright © 2016年 MuMu All rights reserved.
//

#import "RNLabelMaker.h"
#import "UIColor+Hex.h"

@interface RNLabelMaker(){
    UILabel *_labelMake;
}

@end
@implementation RNLabelMaker

- (id)make {
    if (!_labelMake) {
        _labelMake = [[UILabel alloc] init];
    }
    return _labelMake;
}

- (RNLabelMaker *(^)(UIFont *))font {
    return ^(UIFont *font){
        [self.make setFont:font];
        return self;
    };
}

- (RNLabelMaker *(^)(CGFloat))fontWithBoldSystemSize {
    return ^(CGFloat fontSize){
        [self.make setFont:[UIFont boldSystemFontOfSize:fontSize]];
        return self;
    };
}

- (RNLabelMaker *(^)(CGFloat))fontWithSystemSize {
    return ^(CGFloat fontWithSystemSize){
        [self.make setFont:[UIFont systemFontOfSize:fontWithSystemSize]];
        return self;
    };
}

- (RNLabelMaker *(^)(NSTextAlignment))textAlignment {
    return ^(NSTextAlignment textAlignment){
        [self.make setTextAlignment:textAlignment];
        return self;
    };
}

- (RNLabelMaker *(^)(NSString *))text {
    return ^(NSString *text) {
        [self.make setText:text];
        return self;
    };
}

- (RNLabelMaker *(^)(UIColor *))textColor {
    return ^(UIColor *textColor) {
        [self.make setTextColor:textColor];
        return self;
    };
}

- (RNLabelMaker *(^)(unsigned long))textColorFromHex {
    return ^(unsigned long hex) {
        [self.make setTextColor:[UIColor rn_colorFromHexValue:hex]];
        return self;
    };
}

- (RNLabelMaker *(^)(UIColor *))shadowColor {
    return ^(UIColor *shadowColor) {
        [self.make setShadowColor:shadowColor];
        return self;
    };
}

- (RNLabelMaker *(^)(unsigned long))shadowColorFromHex {
    return ^(unsigned long hex) {
        [self.make setShadowColor:[UIColor rn_colorFromHexValue:hex]];
        return self;
    };
}

- (RNLabelMaker *(^)(CGSize))shadowOffset {
    return ^(CGSize shadowOffset) {
        [self.make setShadowOffset:shadowOffset];
        return self;
    };
}

- (RNLabelMaker *(^)(NSInteger))numberOfLines {
    return ^(NSInteger numberOfLines) {
        [self.make setNumberOfLines:numberOfLines];
        return self;
    };
}

- (RNLabelMaker *(^)(UIBaselineAdjustment))baselineAdjustment {
    return ^(UIBaselineAdjustment baselineAdjustment) {
        [self.make setBaselineAdjustment:baselineAdjustment];
        return self;
    };
}

- (RNLabelMaker *(^)(CGFloat))minimumScaleFactor {
    return ^(CGFloat minimumScaleFactor) {
        [self.make setMinimumScaleFactor:minimumScaleFactor];
        return self;
    };
}

- (RNLabelMaker *(^)(CGFloat))preferredMaxLayoutWidth {
    return ^(CGFloat preferredMaxLayoutWidth) {
        [self.make setPreferredMaxLayoutWidth:preferredMaxLayoutWidth];
        return self;
    };
}

- (RNLabelMaker *(^)(BOOL))adjustsFontSizeToFitWidth {
    return ^(BOOL adjustsFontSizeToFitWidth) {
        [self.make setAdjustsFontSizeToFitWidth:adjustsFontSizeToFitWidth];
        return self;
    };
}

- (RNLabelMaker *(^)(NSLineBreakMode))lineBreakMode {
    return ^(NSLineBreakMode lineBreakMode) {
        [self.make setLineBreakMode:lineBreakMode];
        return self;
    };
}

- (RNLabelMaker *(^)(BOOL))highlighted {
    return ^(BOOL highlighted) {
        [self.make setHighlighted:highlighted];
        return self;
    };
}

- (RNLabelMaker *(^)(UIColor *))highlightedTextColor {
    return ^(UIColor *highlightedTextColor) {
        [self.make setHighlightedTextColor:highlightedTextColor];
        return self;
    };
}

- (RNLabelMaker *(^)(unsigned long))highlightedTextColorFromHex {
    return ^(unsigned long hex) {
        [self.make setHighlightedTextColor:[UIColor rn_colorFromHexValue:hex]];
        return self;
    };
}

- (RNLabelMaker *(^)(NSAttributedString *))attributedText {
    return ^(NSAttributedString *attributedText) {
        [self.make setAttributedText:attributedText];
        return self;
    };
}

- (RNLabelMaker *(^)(BOOL))enabled {
    return ^(BOOL enabled) {
        [self.make setEnabled:enabled];
        return self;
    };
}

@end
