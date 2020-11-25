//
//  NSObject+hook.h
//  WDUTMSDK
//
//  Created by 赵杰 on 2018/8/30.
//

#import <Foundation/Foundation.h>

@interface NSObject(hook)

+ (void)utm_swizzleInstanceMethod:(SEL)originalSel with:(Class)newClass newSel:(SEL)newSel;

+ (void)utm_swizzleInstanceMethod:(SEL)originalSel with:(SEL)newSel;

+ (void)utm_swizzleClassMethod:(SEL)originalSel with:(SEL)newSel;

@end
