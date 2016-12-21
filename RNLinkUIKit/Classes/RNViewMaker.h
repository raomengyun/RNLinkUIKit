//
//  RNViewMaker.h
//
//  Created by MuMu on 2016/12/5.
//  Copyright © 2016年 MuMu All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol RNViewMaker <NSObject>

/// must be instance of UIView or UIView's subClass
/// should be Override by subclass
@property (nonatomic, strong, readonly) id make;

@end

@interface RNViewMaker : NSObject
<RNViewMaker>

- (RNViewMaker *(^)(BOOL))translatesAutoresizingMaskIntoConstraints;

- (RNViewMaker *(^)(BOOL))userInteractionEnabled;

- (RNViewMaker *(^)(NSInteger))tag;

- (RNViewMaker *(^)(CGRect))frame;

- (RNViewMaker *(^)(CGRect))bounds;

- (RNViewMaker *(^)(CGPoint))center;

- (RNViewMaker *(^)(CGAffineTransform))transform;

- (RNViewMaker *(^)(CGFloat))contentScaleFactor;

- (RNViewMaker *(^)(BOOL))multipleTouchEnabled;

- (RNViewMaker *(^)(BOOL))exclusiveTouch;

- (RNViewMaker *(^)(BOOL))autoresizesSubviews;

- (RNViewMaker *(^)(UIViewAutoresizing))autoresizingMask;

- (RNViewMaker *(^)(UIEdgeInsets))layoutMargins;

- (RNViewMaker *(^)(BOOL))preservesSuperviewLayoutMargins;

- (RNViewMaker *(^)(BOOL))clipsToBounds;
- (RNViewMaker *(^)(CGFloat))cornerRadius;
- (RNViewMaker *(^)(CGFloat,UIColor *color))border;
- (RNViewMaker *(^)(CGFloat,unsigned long))borderWithHex;

- (RNViewMaker *(^)(UIColor *))backgroundColor;
- (RNViewMaker *(^)(unsigned long))backgroundColorFromHex;

- (RNViewMaker *(^)(CGFloat))alpha;

- (RNViewMaker *(^)(BOOL))opaque;

- (RNViewMaker *(^)(BOOL))clearsContextBeforeDrawing;

- (RNViewMaker *(^)(BOOL))hidden;

- (RNViewMaker *(^)(UIViewContentMode))contentMode;

- (RNViewMaker *(^)(UIColor *))tintColor;
- (RNViewMaker *(^)(unsigned long))tintColorFromHex;

- (RNViewMaker *(^)(UIViewTintAdjustmentMode))tintAdjustmentMode;

@end
