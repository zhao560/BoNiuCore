//
//  UIDevice+utm.h
//  WDHybridStandard
//
//  Created by 赵杰 on 2018/7/18.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIDevice(utm)

- (nonnull NSString *)utm_cpu;
- (int) utm_concurrency;
- (nonnull NSString *)utm_model;
- (nonnull NSString *)utm_carrier;
- (nonnull NSString *)utm_network;

@end
