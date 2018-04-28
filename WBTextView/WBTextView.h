//
//  WBTextView.h
//  weibo
//
//  Created by apple-jd37 on 15/11/16.
//  Copyright © 2015年 apple-jd37. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WBTextView : UITextView
//占位符
@property (nonatomic,strong) NSString *placeHolder;
//字体颜色
@property (nonatomic,strong) UIColor  *placeHolderColor;
//字体font
@property (nonatomic,strong) UIFont *textFont;

@end
