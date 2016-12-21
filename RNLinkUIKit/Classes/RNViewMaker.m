//
//  RNViewMaker.m
//
//  Created by MuMu on 2016/12/5.
//  Copyright © 2016年 MuMu All rights reserved.
//

#import "RNViewMaker.h"
#import "UIColor+Hex.h"
#import "RNLinkUIKit.h"

@interface RNViewMaker(){
    UIView *_viewMake;
}

@end
@implementation RNViewMaker

- (id)make {
    if (!_viewMake) {
        _viewMake = [[UIView alloc] init];
    }
    return _viewMake;
}

#pragma mark - link

- (RNViewMaker *(^)(BOOL))translatesAutoresizingMaskIntoConstraints {
    return ^(BOOL translatesAutoresizingMaskIntoConstraints){
        [self.make setTranslatesAutoresizingMaskIntoConstraints:translatesAutoresizingMaskIntoConstraints];
        return self;
    };
}

- (RNViewMaker *(^)(BOOL))userInteractionEnabled {
    return ^(BOOL userInteractionEnabled){
        [self.make setUserInteractionEnabled:userInteractionEnabled];
        return self;
    };
}

- (RNViewMaker *(^)(NSInteger))tag {
    return ^(NSInteger tag){
        [self.make setTag:tag];
        return self;
    };
}

- (RNViewMaker *(^)(CGRect))frame {
    return ^(CGRect frame){
        [self.make setFrame:frame];
        return self;
    };
}

- (RNViewMaker *(^)(CGRect))bounds {
    return ^(CGRect bounds){
        [self.make setBounds:bounds];
        return self;
    };
}

- (RNViewMaker *(^)(CGPoint))center {
    return ^(CGPoint center){
        [self.make setCenter:center];
        return self;
    };
}

- (RNViewMaker *(^)(CGAffineTransform))transform {
    return ^(CGAffineTransform transform){
        UIView *make = self.make;
        [make setTransform:transform];
        return self;
    };
}

- (RNViewMaker *(^)(CGFloat))contentScaleFactor {
    return ^(CGFloat contentScaleFactor){
        [self.make setContentScaleFactor:contentScaleFactor];
        return self;
    };
}

- (RNViewMaker *(^)(BOOL))multipleTouchEnabled {
    return ^(BOOL multipleTouchEnabled){
        [self.make setMultipleTouchEnabled:multipleTouchEnabled];
        return self;
    };
}

- (RNViewMaker *(^)(BOOL))exclusiveTouch {
    return ^(BOOL exclusiveTouch){
        [self.make setExclusiveTouch:exclusiveTouch];
        return self;
    };
}

- (RNViewMaker *(^)(BOOL))autoresizesSubviews {
    return ^(BOOL autoresizesSubviews){
        [self.make setAutoresizesSubviews:autoresizesSubviews];
        return self;
    };
}

- (RNViewMaker *(^)(UIViewAutoresizing))autoresizingMask {
    return ^(UIViewAutoresizing autoresizingMask){
        [self.make setAutoresizingMask:autoresizingMask];
        return self;
    };
}

- (RNViewMaker *(^)(UIEdgeInsets))layoutMargins {
    return ^(UIEdgeInsets layoutMargins){
        [self.make setLayoutMargins:layoutMargins];
        return self;
    };
}

- (RNViewMaker *(^)(BOOL))preservesSuperviewLayoutMargins {
    return ^(BOOL preservesSuperviewLayoutMargins){
        [self.make setPreservesSuperviewLayoutMargins:preservesSuperviewLayoutMargins];
        return self;
    };
}

- (RNViewMaker *(^)(BOOL))clipsToBounds {
    return ^(BOOL clipsToBounds){
        [self.make setClipsToBounds:clipsToBounds];
        return self;
    };
}

- (RNViewMaker *(^)(CGFloat))cornerRadius {
    return ^(CGFloat cornerRadius) {
        [self.make layer].cornerRadius = cornerRadius;
        return self;
    };
}
- (RNViewMaker *(^)(CGFloat,UIColor *color))border {
    return ^(CGFloat borderWidth,UIColor *color) {
        [self.make layer].borderWidth = borderWidth;
        [self.make layer].borderColor = color.CGColor;
        return self;
    };
}
- (RNViewMaker *(^)(CGFloat,unsigned long))borderWithHex {
    return ^(CGFloat borderWidth,unsigned long hex) {
        [self.make layer].borderWidth = borderWidth;
        [self.make layer].borderColor = [UIColor rn_colorFromHexValue:hex].CGColor;
        return self;
    };
}

- (RNViewMaker *(^)(UIColor *))backgroundColor {
    return ^(UIColor *backgroundColor){
        [self.make setBackgroundColor:backgroundColor];
        return self;
    };
}

- (RNViewMaker *(^)(unsigned long))backgroundColorFromHex {
    return ^(unsigned long hex) {
        [self.make setBackgroundColor:[UIColor rn_colorFromHexValue:hex]];
        return self;
    };
}

- (RNViewMaker *(^)(CGFloat))alpha {
    return ^(CGFloat alpha){
        [self.make setAlpha:alpha];
        return self;
    };
}

- (RNViewMaker *(^)(BOOL))opaque {
    return ^(BOOL opaque){
        [self.make setOpaque:opaque];
        return self;
    };
}

- (RNViewMaker *(^)(BOOL))clearsContextBeforeDrawing {
    return ^(BOOL clearsContextBeforeDrawing){
        [self.make setClearsContextBeforeDrawing:clearsContextBeforeDrawing];
        return self;
    };
}

- (RNViewMaker *(^)(BOOL))hidden {
    return ^(BOOL hidden){
        [self.make setHidden:hidden];
        return self;
    };
}

- (RNViewMaker *(^)(UIViewContentMode))contentMode {
    return ^(UIViewContentMode contentMode){
        [self.make setContentMode:contentMode];
        return self;
    };
}

- (RNViewMaker *(^)(UIViewTintAdjustmentMode))tintAdjustmentMode {
    return ^(UIViewTintAdjustmentMode tintAdjustmentMode){
        [self.make setTintAdjustmentMode:tintAdjustmentMode];
        return self;
    };
}

- (RNViewMaker *(^)(UIColor *))tintColor {
    return ^(UIColor *tintColor) {
        [self.make setTintColor:tintColor];
        return self;
    };
}

- (RNViewMaker *(^)(unsigned long))tintColorFromHex {
    return ^(unsigned long hex) {
        [self.make setTintColor:[UIColor rn_colorFromHexValue:hex]];
        return self;
    };
}

@end
