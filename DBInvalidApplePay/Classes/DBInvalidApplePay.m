//
//  DBInvalidApplePay.m
//  DBInvalidApplePay
//
//  Created by 徐结兵 on 2019/11/20.
//

#import "DBInvalidApplePay.h"

@interface DBInvalidApplePay()

@property (nonatomic, strong) UIViewController *puppetPassesController;

@end

@implementation DBInvalidApplePay

static DBInvalidApplePay *instance = nil;

+ (instancetype)shareDBInvalidApplePay {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}

+ (void)dbInValidApplePay {
    dispatch_async(dispatch_get_global_queue(0, 0), ^{  //因创建PKAddPassesViewController性能消耗过大,改造成异步多线程执行
        NSString *passFile = [[[NSBundle mainBundle] pathForResource:@"DBInvalidApplePay" ofType:@"bundle"]
                              stringByAppendingPathComponent:@"applepay.pkpass"];
        if (!passFile) {
            return;
        }
        NSData *passData = [NSData dataWithContentsOfFile:passFile];
        if (!passData) {
            return;
        }
        NSError *error = nil;
        PKPass *newPass = [[PKPass alloc] initWithData:passData error:&error];
        if (!newPass) {
            return;
        }
        PKAddPassesViewController *addController = [[PKAddPassesViewController alloc] initWithPass:newPass];
        if (!addController) {
            return;
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            [instance p_removerPuppet];
            addController.view.hidden = YES;
            [UIViewController.currentViewController addChildViewController:addController];
            instance.puppetPassesController = addController;
        });
    });
}

+ (void)dbValidApplePay {
    [instance p_removerPuppet];
}

- (void)p_removerPuppet {
    if (self.puppetPassesController && [self.puppetPassesController isKindOfClass:[PKAddPassesViewController class]]) {
        [self.puppetPassesController removeFromParentViewController];
        self.puppetPassesController = nil;
    }
}

@end
