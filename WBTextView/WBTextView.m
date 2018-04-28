//
//  WBTextView.m
//  weibo
//
//  Created by apple-jd37 on 15/11/16.
//  Copyright © 2015年 apple-jd37. All rights reserved.
//

#import "WBTextView.h"

@implementation WBTextView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.placeHolderColor = [UIColor lightGrayColor];
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textDidChange) name:UITextViewTextDidChangeNotification object:self];
    }
    return self;
}

- (void)textDidChange
{
    [self setNeedsDisplay];
}

- (void)setText:(NSString *)text
{
    [super setText:text];
    [self setNeedsDisplay];
}

- (void)setAttributedText:(NSAttributedString *)attributedText
{
    [super setAttributedText:attributedText];
    [self setNeedsDisplay];
}

- (void)setPlaceHolder:(NSString *)placeHolder
{
    _placeHolder = placeHolder;
    [self setNeedsDisplay];
}
- (void)setPlaceHolderColor:(UIColor *)placeHolderColor
{
    _placeHolderColor = placeHolderColor;
    [self setNeedsDisplay];
}

- (void)setTextFont:(UIFont *)textFont
{
    _textFont = textFont;
    self.font = self.textFont;
}
- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    if (self.hasText) {
        return;
    }
    NSString *str = self.placeHolder;
    NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
    if (self.textFont) {
        attributes[NSFontAttributeName]  = self.textFont;
    }else{
        attributes[NSFontAttributeName]  = self.font;
    }
    attributes[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    CGFloat textW = self.bounds.size.width-10;
    [str drawInRect:CGRectMake(5, 8, textW, 300) withAttributes:attributes];
}
- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
