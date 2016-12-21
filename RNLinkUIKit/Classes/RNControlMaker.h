//
//  RNControlMaker.h
//
//  Created by MuMu on 2016/12/6.
//  Copyright © 2016年 MuMu All rights reserved.
//

#import "RNViewMaker.h"

@interface RNControlMaker : RNViewMaker

- (RNControlMaker *(^)(BOOL))enabled;

- (RNControlMaker *(^)(BOOL))selected;

- (RNControlMaker *(^)(BOOL))highlighted;

- (RNControlMaker *(^)(UIControlContentVerticalAlignment))contentVerticalAlignment;

- (RNControlMaker *(^)(UIControlContentHorizontalAlignment))contentHorizontalAlignment;

- (RNControlMaker *(^)(id,SEL,UIControlEvents))addTargetActionForControlEvents;

- (RNControlMaker *(^)(id,SEL,UIControlEvents))removeTargetActionForControlEvents;

@end
