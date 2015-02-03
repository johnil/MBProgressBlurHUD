//
//  ViewController.m
//  MBProgressBlurHUD
//
//  Created by Johnil on 15/2/3.
//  Copyright (c) 2015年 Johnil. All rights reserved.
//

#import "ViewController.h"
#import "MBProgressHUD.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    [webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://dribbble.com"]]];
    webView.frame = self.view.frame;
    [self.view addSubview:webView];
    MBProgressHUD *HUD = [[MBProgressHUD alloc] initWithView:self.view];
    [self.view addSubview:HUD];
    HUD.userInteractionEnabled = NO;
    HUD.labelText = @"Loading...";
    [HUD show:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
