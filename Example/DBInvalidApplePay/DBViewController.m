//
//  DBViewController.m
//  DBInvalidApplePay
//
//  Created by xujiebing on 11/20/2019.
//  Copyright (c) 2019 xujiebing. All rights reserved.
//

#import "DBViewController.h"
#import <DBInvalidApplePay/DBInvalidApplePay.h>

@interface DBViewController ()

@end

@implementation DBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [DBInvalidApplePay dbInValidApplePay];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    [DBInvalidApplePay dbValidApplePay];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
