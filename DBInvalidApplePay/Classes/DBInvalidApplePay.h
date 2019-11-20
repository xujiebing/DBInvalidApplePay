//
//  DBInvalidApplePay.h
//  DBInvalidApplePay
//
//  Created by 徐结兵 on 2019/11/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DBInvalidApplePay : NSObject

/// 屏蔽Apple Pay界面
+ (void)dbInValidApplePay;

/// 取消屏蔽
+ (void)dbValidApplePay;

@end

NS_ASSUME_NONNULL_END
