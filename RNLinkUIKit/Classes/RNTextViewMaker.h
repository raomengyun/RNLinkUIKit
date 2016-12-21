//
//  RNTextViewMaker.h
//
//  Created by MuMu on 2016/12/7.
//  Copyright © 2016年 MuMu All rights reserved.
//

#import "RNScrollViewMaker.h"

@interface RNTextViewMaker : RNScrollViewMaker

- (instancetype)initWithTextContainer:(CGSize)textContainerSize;

- (RNTextViewMaker *(^)(UIFont *))font;

- (RNTextViewMaker *(^)(CGFloat ))systemFontOfSize;

- (RNTextViewMaker *(^)(UIColor *))textColor;

- (RNTextViewMaker *(^)(NSTextAlignment))textAlignment;

- (RNTextViewMaker *(^)(NSRange))selectedRange;

- (RNTextViewMaker *(^)(BOOL))editable;

- (RNTextViewMaker *(^)(BOOL))selectable;

- (RNTextViewMaker *(^)(BOOL))allowsEditingTextAttributes;

- (RNTextViewMaker *(^)(NSAttributedString *))attributedText;

- (RNTextViewMaker *(^)(NSDictionary *))typingAttributes;

- (RNTextViewMaker *(^)(UIView *))inputView;

- (RNTextViewMaker *(^)(UIView *))inputAccessoryView;

- (RNTextViewMaker *(^)(NSString *))placeholder;

- (RNTextViewMaker *(^)(UIColor *))placeholderColor;

@end
