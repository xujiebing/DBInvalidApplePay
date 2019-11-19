//
//  BWTInvalidApplePay.m
//  BWTInvalidApplePay
//
//  Created by ccc's MacBook Pro on 2018/6/12.
//

#import "BWTInvalidApplePay.h"
#import <PassKit/PassKit.h>
#import <BWTBaseUI/BWTBaseUI.h>

@interface BWTInvalidApplePay()

@property (nonatomic, strong) UIViewController *puppetPassesController;

@end

@implementation BWTInvalidApplePay

static BWTInvalidApplePay* _instance = nil;

+ (instancetype)shareBWTInvalidApplePay {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[super allocWithZone:NULL] init];
    });
    return _instance;
}

- (void)bwtInValidApplePay {
    dispatch_async(dispatch_get_global_queue(0, 0), ^{  //因创建PKAddPassesViewController性能消耗过大,改造成异步多线程执行
        NSString *passFile = [[[NSBundle mainBundle] pathForResource:@"ApplePay" ofType:@"bundle"]
                              stringByAppendingPathComponent:@"applepay.pkpass"];
        if (!passFile) {
            return;
        }
        NSData *passData = [NSData dataWithContentsOfFile:passFile];
        if (!passData) {
            return;
        }
        
        NSError *error = nil;
        PKPass *newPass = [[PKPass alloc] initWithData:passData
                                                 error:&error];
        if (!newPass) {
            return;
        }
        
        PKAddPassesViewController *addController = [[PKAddPassesViewController alloc] initWithPass:newPass];
        if (!addController) {
            return;
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            [self p_removerPuppet];//先移除旧的
            addController.view.hidden = YES;
            [[UIViewController lastViewController] addChildViewController:addController];
            self.puppetPassesController = addController;
        });
    });
}

- (void)bwtValidApplePay {
    [self p_removerPuppet];
}

- (void)p_removerPuppet {
    if (self.puppetPassesController && [self.puppetPassesController isKindOfClass:[PKAddPassesViewController class]]) {
        [self.puppetPassesController removeFromParentViewController];
        self.puppetPassesController = nil;
    }
}


@end
