//
//  ViewController.m
//  T8ProgressWebViewControllerDemo
//
//  Created by 琦张 on 15/7/23.
//  Copyright (c) 2015年 t8. All rights reserved.
//

#import "ViewController.h"
#import "T8ProgressWebViewController.h"

@interface ViewController ()

@property (nonatomic) UIButton *testBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    [self.view addSubview:self.testBtn];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)testBtnPressed
{
    T8ProgressWebViewController *vc = [[T8ProgressWebViewController alloc] initWithUrl:@"http://www.baidu.com"];
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - getter
- (UIButton *)testBtn
{
    if (!_testBtn) {
        _testBtn = [UIButton buttonWithType:UIButtonTypeSystem];
        _testBtn.frame = CGRectMake(100, 100, 100, 100);
        _testBtn.backgroundColor = [UIColor grayColor];
        [_testBtn addTarget:self action:@selector(testBtnPressed) forControlEvents:UIControlEventTouchUpInside];
    }
    return _testBtn;
}

@end
