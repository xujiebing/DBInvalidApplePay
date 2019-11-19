//
//  BWTInvalidApplePay.h
//  BWTInvalidApplePay
//
//  Created by ccc's MacBook Pro on 2018/6/12.
//

#import <Foundation/Foundation.h>

@interface BWTInvalidApplePay : NSObject

/**
 单例类
 
 @return 单例类
 */
+ (instancetype)shareBWTInvalidApplePay;

/**
 屏蔽Apple Pay界面弹出
 */
- (void)bwtInValidApplePay;

/**
 取消屏蔽-
 在调用Apple Pay弹出的界面delloc中调用
 */
- (void)bwtValidApplePay;

@end
