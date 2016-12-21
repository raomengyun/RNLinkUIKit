//
//  RNButtonMaker.m
//
//  Created by MuMu on 2016/12/6.
//  Copyright © 2016年 MuMu All rights reserved.
//

#import "RNButtonMaker.h"
#import "UIColor+Hex.h"

@interface RNButtonMaker(){
    UIButton *_buttonMaker;
    UIButtonType _buttonType;
}

@end
@implementation RNButtonMaker

- (instancetype)init {
    return [self initWithButtonType:UIButtonTypeSystem];
}

- (instancetype)initWithButtonType:(UIButtonType)buttonType {
    self = [super init];
    if (self) {
        self->_buttonType = buttonType;
    }
    return self;
}

- (id)make {
    if (!_buttonMaker) {
        _buttonMaker = [UIButton buttonWithType:_buttonType];
    }
    return _buttonMaker;
}

- (RNButtonMaker *(^)(UIEdgeInsets))contentEdgeInsets {
    return ^(UIEdgeInsets contentEdgeInsets) {
        [self.make setContentEdgeInsets:contentEdgeInsets];
        return self;
    };
}
- (RNButtonMaker *(^)(UIEdgeInsets))titleEdgeInsets {
    return ^(UIEdgeInsets titleEdgeInsets) {
        [self.make setTitleEdgeInsets:titleEdgeInsets];
        return self;
    };
}
- (RNButtonMaker *(^)(UIEdgeInsets))imageEdgeInsets {
    return ^(UIEdgeInsets imageEdgeInsets) {
        [self.make setImageEdgeInsets:imageEdgeInsets];
        return self;
    };
}

- (RNButtonMaker *(^)(BOOL))reversesTitleShadowWhenHighlighted {
    return ^(BOOL option) {
        [self.make setReversesTitleShadowWhenHighlighted:option];
        return self;
    };
}
- (RNButtonMaker *(^)(BOOL))adjustsImageWhenHighlighted {
    return ^(BOOL option) {
        [self.make setAdjustsImageWhenHighlighted:option];
        return self;
    };
}
- (RNButtonMaker *(^)(BOOL))adjustsImageWhenDisabled {
    return ^(BOOL option) {
        [self.make setAdjustsImageWhenDisabled:option];
        return self;
    };
}
- (RNButtonMaker *(^)(BOOL))showsTouchWhenHighlighted {
    return ^(BOOL option) {
        [self.make setShowsTouchWhenHighlighted:option];
        return self;
    };
}

- (RNButtonMaker *(^)(UIColor *))tintColor {
    return ^(UIColor *tintColor) {
        [self.make setTintColor:tintColor];
        return self;
    };
}

- (RNButtonMaker *(^)(unsigned long))tintColorFromHex {
    return ^(unsigned long hex) {
        [self.make setTintColor:[UIColor rn_colorFromHexValue:hex]];
        return self;
    };
}

- (RNButtonMaker *(^)(NSString *,UIControlState))titleForState {
    return ^(NSString *title,UIControlState state) {
        [self.make setTitle:title forState:state];
        return self;
    };
}
- (RNButtonMaker *(^)(UIColor *,UIControlState))titleColorForState {
    return ^(UIColor *color, UIControlState state) {
        [self.make setTitleColor:color forState:state];
        return self;
    };
}
- (RNButtonMaker *(^)(unsigned long,UIControlState))titleColorFromHexForState {
    return ^(unsigned long hex, UIControlState state) {
        [self.make setTitleColor:[UIColor rn_colorFromHexValue:hex] forState:state];
        return self;
    };
}
- (RNButtonMaker *(^)(UIColor *,UIControlState))titleShadowColorForState {
    return ^(UIColor *color, UIControlState state) {
        [self.make setTitleShadowColor:color forState:state];
        return self;
    };
}
- (RNButtonMaker *(^)(unsigned long,UIControlState))titleShadowColorFromHexForState {
    return ^(unsigned long hex, UIControlState state) {
        [self.make setTitleShadowColor:[UIColor rn_colorFromHexValue:hex] forState:state];
        return self;
    };
}

- (RNButtonMaker *(^)(NSAttributedString *,UIControlState))attributeTitleForState {
    return ^(NSAttributedString *attributeTitle, UIControlState state) {
        [self.make setAttributedTitle:attributeTitle forState:state];
        return self;
    };
}

- (RNButtonMaker *(^)(UIImage *,UIControlState))imageForState {
    return ^(UIImage *image, UIControlState state) {
        [self.make setImage:image forState:state];
        return self;
    };
}
- (RNButtonMaker *(^)(NSString *,UIControlState))localImageForState {
    return ^(NSString *imageName, UIControlState state) {
        [self.make setImage:[UIImage imageNamed:imageName] forState:state];
        return self;
    };
}
- (RNButtonMaker *(^)(UIImage *,UIControlState))backgroundImageForState {
    return ^(UIImage *image, UIControlState state) {
        [self.make setBackgroundImage:image forState:state];
        return self;
    };
}
- (RNButtonMaker *(^)(NSString *,UIControlState))localBackgroundImageForState {
    return ^(NSString *imageName, UIControlState state) {
        [self.make setBackgroundImage:[UIImage imageNamed:imageName] forState:state];
        return self;
    };
}

- (RNButtonMaker *(^)(UIFont *))font {
    return ^(UIFont *font) {
        [self.make titleLabel].font = font;
        return self;
    };
}
- (RNButtonMaker *(^)(CGFloat))fontWithSystemSize {
    return ^(CGFloat fontWithSystemSize) {
        [self.make titleLabel].font = [UIFont systemFontOfSize:fontWithSystemSize];
        return self;
    };
}

@end
