//
//  UIColor+Hex.h
//
//  Created by MuMu on 2016/12/5.
//  Copyright © 2016年 MuMu All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Hex)

+ (UIColor *)rn_colorFromHexValue:(unsigned long)hexValue;

+ (UIColor *)rn_colorFromHexValue:(unsigned long)hexValue alpha:(CGFloat)alpha;

@end
