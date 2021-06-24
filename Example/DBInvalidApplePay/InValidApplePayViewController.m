//
//  InValidApplePayViewController.m
//  DBInvalidApplePay_Example
//
//  Created by 山鹰 on 2021/6/23.
//  Copyright © 2021 xujiebing. All rights reserved.
//

#import "InValidApplePayViewController.h"
#import <DBInvalidApplePay/DBInvalidApplePay.h>

@interface InValidApplePayViewController ()

@end

@implementation InValidApplePayViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [DBInvalidApplePay dbInValidApplePay];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    [DBInvalidApplePay dbValidApplePay];
}

@end
