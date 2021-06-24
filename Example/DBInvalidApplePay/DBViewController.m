//
//  DBViewController.m
//  DBInvalidApplePay
//
//  Created by xujiebing on 11/20/2019.
//  Copyright (c) 2019 xujiebing. All rights reserved.
//

#import "DBViewController.h"
#import "InValidApplePayViewController.h"

@interface DBViewController ()

@end

@implementation DBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 200, 80)];
    btn.center = self.view.center;
    [btn setTitle:@"push" forState:UIControlStateNormal];
    [btn setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:30];
    [btn addTarget:self action:@selector(p_push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)p_push {
    InValidApplePayViewController *vc = [InValidApplePayViewController new];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
