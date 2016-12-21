//
//  RNTextViewMaker.m
//
//  Created by MuMu on 2016/12/7.
//  Copyright © 2016年 MuMu All rights reserved.
//

#import "RNTextViewMaker.h"
//TextView默认文本上边距
static CGFloat textViewContentInsetTop = 7.f;
//TextView默认文本左边距
static CGFloat textViewContentInsetLeft = 6.f;

//添加textView
@interface _ZBJBTextViewMakerView : UITextView

@property (nonatomic, copy)   NSString *placeholder;
@property (nonatomic, strong) UIColor  *placeholderColor;

@end

@implementation _ZBJBTextViewMakerView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self configuration];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame textContainer:(NSTextContainer *)textContainer {
    if (self = [super initWithFrame:frame textContainer:textContainer]) {
        [self configuration];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self configuration];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    if (self.hasText) return;
    NSMutableDictionary * attrs = [NSMutableDictionary dictionary];
    attrs[NSForegroundColorAttributeName] = self.placeholderColor;
    attrs[NSFontAttributeName] = self.font ? self.font : [UIFont systemFontOfSize:12];
    
    CGFloat w = self.frame.size.width - 2 * textViewContentInsetLeft;
    CGFloat h = self.frame.size.height - 2 * textViewContentInsetTop;
    CGRect placeholderRect = CGRectMake(textViewContentInsetLeft, textViewContentInsetTop, w, h);
    [self.placeholder drawInRect:placeholderRect withAttributes:attrs];
}

- (void)configuration {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(placeHolderViewDidChange:) name:UITextViewTextDidChangeNotification object:self];
    
    _placeholderColor = [UIColor lightGrayColor];
    self.layoutManager.allowsNonContiguousLayout = NO;
}

- (void)setPlaceholderColor:(UIColor *)placeholderColor {
    if (![placeholderColor isEqual:_placeholder]) {
        _placeholderColor = placeholderColor;
        [self setNeedsDisplay];
    }
}

- (void)setPlaceholder:(NSString *)placeholder {
    if ([placeholder isKindOfClass:[NSString class]] &&
        placeholder.length > 0 &&
        ![placeholder isEqualToString:_placeholder]) {
        _placeholder = placeholder;
        [self setNeedsDisplay];
    }
}

- (void)placeHolderViewDidChange:(NSNotification *)notification {
    [self setNeedsDisplay];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self setNeedsDisplay];
}

- (void)setText:(NSString *)text{
    [super setText:text];
    [self setNeedsDisplay];
}

@end


@interface RNTextViewMaker (){
    _ZBJBTextViewMakerView *_textView;
    NSTextContainer *_textContainer;
}
@end

@implementation RNTextViewMaker

- (instancetype)initWithTextContainer:(CGSize )textContainerSize{
    self = [super init];
    if (self) {
        NSTextContainer *textContainer = [[NSTextContainer alloc] initWithSize:textContainerSize];
        textContainer.widthTracksTextView = YES;
        NSLayoutManager *layoutManager = [[NSLayoutManager alloc] init];
        [layoutManager addTextContainer:textContainer];
        NSTextStorage *stroage = [[NSTextStorage alloc] init];
        [stroage addLayoutManager:layoutManager];
        _textContainer = textContainer;
    }
    return self;
}

- (id)make {
    if (!_textView) {
        if (_textContainer) {
            _textView = [[_ZBJBTextViewMakerView alloc] initWithFrame:CGRectZero textContainer:_textContainer];
        }else{
            _textView = [[_ZBJBTextViewMakerView alloc] init];
        }
    }
    return _textView;
}

- (RNTextViewMaker *(^)(UIFont *))font {
    return ^(UIFont *font) {
        [self.make setFont:font];
        return self;
    };
}
- (RNTextViewMaker *(^)(CGFloat ))systemFontOfSize{
    return ^(CGFloat fontSize) {
        [self.make setFont:[UIFont systemFontOfSize:fontSize]];
        return self;
    };
}

- (RNTextViewMaker *(^)(UIColor *))textColor {
    return ^(UIColor *color) {
        [self.make setTextColor:color];
        return self;
    };
}

- (RNTextViewMaker *(^)(NSTextAlignment))textAlignment {
    return ^(NSTextAlignment alignment) {
        [self.make setTextAlignment:alignment];
        return self;
    };
}

- (RNTextViewMaker *(^)(NSRange))selectedRange {
    return ^(NSRange range) {
        [self.make setSelectedRange:range];
        return self;
    };
}

- (RNTextViewMaker *(^)(BOOL))editable {
    return ^(BOOL editable) {
        [self.make setEditable:editable];
        return self;
    };
}

- (RNTextViewMaker *(^)(BOOL))selectable {
    return ^(BOOL selectable) {
        [self.make setSelectable:selectable];
        return self;
    };
}

- (RNTextViewMaker *(^)(BOOL))allowsEditingTextAttributes {
    return ^(BOOL allow) {
        [self.make setAllowsEditingTextAttributes:allow];
        return self;
    };
}

- (RNTextViewMaker *(^)(NSAttributedString *))attributedText {
    return ^(NSAttributedString *attributeString) {
        [self.make setAttributedText:attributeString];
        return self;
    };
}

- (RNTextViewMaker *(^)(NSDictionary *))typingAttributes {
    return ^(NSDictionary *attributes) {
        [self.make setTypingAttributes:attributes];
        return self;
    };
}

- (RNTextViewMaker *(^)(UIView *))inputView {
    return ^(UIView *inputView) {
        [self.make setInputView:inputView];
        return self;
    };
}

- (RNTextViewMaker *(^)(UIView *))inputAccessoryView {
    return ^(UIView *inputView) {
        [self.make setInputAccessoryView:inputView];
        return self;
    };
}

- (RNTextViewMaker *(^)(NSString *))placeholder{
    return ^(NSString *placeHolder) {
        [self.make setPlaceholder:placeHolder];
        return self;
    };
}

- (RNTextViewMaker *(^)(UIColor *))placeholderColor{
    return ^(UIColor *placeHolderColor) {
        [self.make setPlaceholderColor:placeHolderColor];
        return self;
    };
}


//UITextView

@end
