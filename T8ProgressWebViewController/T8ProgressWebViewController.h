//
//  T8ProgressWebViewController.h
//  T8ProgressWebViewControllerDemo
//
//  Created by 琦张 on 15/7/23.
//  Copyright (c) 2015年 t8. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <NJKWebViewProgress.h>
#import <NJKWebViewProgressView.h>

@interface T8ProgressWebViewController : UIViewController<NJKWebViewProgressDelegate>

@property (nonatomic) NSString *url;
@property (nonatomic) UIWebView *webView;
@property (nonatomic) NJKWebViewProgress *progressProxy;
@property (nonatomic) NJKWebViewProgressView *progressView;

- (id)initWithUrl:(NSString *)url;

@end
