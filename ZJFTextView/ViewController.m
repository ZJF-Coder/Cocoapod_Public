//
//  ViewController.m
//  ZJFTextView
//
//  Created by sth on 2018/4/28.
//  Copyright © 2018年 zjf. All rights reserved.
//

#import "ViewController.h"
#import "WBTextView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    WBTextView *textView = [[WBTextView alloc] initWithFrame:CGRectMake(30, 50, 200, 100)];
    textView.layer.borderColor = [UIColor grayColor].CGColor;
    textView.layer.borderWidth = 1;
    textView.placeHolder = @"测试placeholder";
    textView.placeHolderColor = [UIColor redColor];
    textView.textFont = [UIFont systemFontOfSize:20];
    [self.view addSubview:textView];
    
    NSLog(@"change");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
