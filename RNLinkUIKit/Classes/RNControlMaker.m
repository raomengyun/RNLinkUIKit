//
//  RNControlMaker.m
//
//  Created by MuMu on 2016/12/6.
//  Copyright © 2016年 MuMu All rights reserved.
//

#import "RNControlMaker.h"

@interface RNControlMaker(){
    UIControl *_controlMaker;
}

@end
@implementation RNControlMaker

- (id)make {
    if (!_controlMaker) {
        _controlMaker = [[UIControl alloc] init];
    }
    return _controlMaker;
}

- (RNControlMaker *(^)(BOOL))enabled {
    return ^(BOOL enable) {
        [self.make setEnabled:enable];
        return self;
    };
}

- (RNControlMaker *(^)(BOOL))selected {
    return ^(BOOL selected) {
        [self.make setSelected:selected];
        return self;
    };
}

- (RNControlMaker *(^)(BOOL))highlighted {
    return ^(BOOL highlighted) {
        [self.make setHighlighted:highlighted];
        return self;
    };
}

- (RNControlMaker *(^)(UIControlContentVerticalAlignment))contentVerticalAlignment {
    return ^(UIControlContentVerticalAlignment contentVerticalAlignment) {
        [self.make setContentVerticalAlignment:contentVerticalAlignment];
        return self;
    };
}

- (RNControlMaker *(^)(UIControlContentHorizontalAlignment))contentHorizontalAlignment {
    return ^(UIControlContentHorizontalAlignment contentHorizontalAlignment) {
        [self.make setContentHorizontalAlignment:contentHorizontalAlignment];
        return self;
    };
}

- (RNControlMaker *(^)(id,SEL,UIControlEvents))addTargetActionForControlEvents {
    return ^(id target,SEL action,UIControlEvents event) {
        [self.make addTarget:target action:action forControlEvents:event];
        return self;
    };
}

- (RNControlMaker *(^)(id,SEL,UIControlEvents))removeTargetActionForControlEvents {
    return ^(id target,SEL action,UIControlEvents event) {
        [self.make removeTarget:target action:action forControlEvents:event];
        return self;
    };
}

@end
