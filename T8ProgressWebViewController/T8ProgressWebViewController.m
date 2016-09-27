//
//  T8ProgressWebViewController.m
//  T8ProgressWebViewControllerDemo
//
//  Created by 琦张 on 15/7/23.
//  Copyright (c) 2015年 t8. All rights reserved.
//

#import "T8ProgressWebViewController.h"

@interface T8ProgressWebViewController ()

@end

@implementation T8ProgressWebViewController

- (id)initWithUrl:(NSString *)url
{
    self = [super init];
    if (self) {
        self.url = url;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.webView];
    self.webView.frame = self.view.bounds;
    [self.view addSubview:self.progressView];
    
    self.webView.allowsInlineMediaPlayback = YES;
    
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:self.url]];
    [self.webView loadRequest:request];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - getter
- (UIWebView *)webView
{
    if (!_webView) {
        _webView = [[UIWebView alloc] init];
        _webView.delegate = self.progressProxy;
    }
    return _webView;
}

- (NJKWebViewProgress *)progressProxy
{
    if (!_progressProxy) {
        _progressProxy = [[NJKWebViewProgress alloc] init];
        _progressProxy.progressDelegate = self;
    }
    return _progressProxy;
}

- (NJKWebViewProgressView *)progressView
{
    if (!_progressView) {
        _progressView = [[NJKWebViewProgressView alloc] initWithFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, 2)];
    }
    return _progressView;
}

#pragma mark - NJKWebViewProgressDelegate
- (void)webViewProgress:(NJKWebViewProgress *)webViewProgress updateProgress:(float)progress
{
    [self.progressView setProgress:progress animated:YES];
}

@end
