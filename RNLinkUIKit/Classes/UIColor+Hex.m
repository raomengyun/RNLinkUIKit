//
//  UIColor+Hex.m
//
//  Created by MuMu on 2016/12/7.
//  Copyright © 2016年 MuMu All rights reserved.
//

#import "UIColor+Hex.h"

@implementation UIColor (Hex)

+ (UIColor *)rn_colorFromHexValue:(unsigned long)hexValue {
    return [self rn_colorFromHexValue:hexValue alpha:1];
}

+ (UIColor *)rn_colorFromHexValue:(unsigned long)hexValue alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16)) / 255.0
                           green:((float)((hexValue & 0xFF00) >> 8)) / 255.0
                            blue:((float)(hexValue & 0xFF)) / 255.0
                           alpha:alpha];
}

@end
