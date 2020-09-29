//
//  RXNetworkManager.h
//  RhinoXCore_source
//
//  Created by daidai on 2020/5/23.
//  Copyright © 2020 daidia. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 *  定义请求类型
 */
typedef NS_ENUM(NSUInteger, RXNetworkRequestType) {
    /**
     *  GET请求
     */
    Get = 0,
    /**
     *  POST请求
     */
    Post
};

typedef void (^RXNetworkResultBlock)(NSDictionary * _Nullable response, NSString * _Nullable errorCode, NSString * _Nullable errorMsg);


@interface RXNetworkManager : NSObject

/// 请求超时时间
@property (nonatomic, assign) NSTimeInterval timeoutInterval;

@property (nonatomic, nullable, copy) NSDictionary<NSString *, NSString *> *allHTTPHeaderFields;

/**
 * 实例化对象
 */
+ (nonnull instancetype)manager;

/**
* 发起网络请求 默认超时时间7秒
*  @param type 请求类型
*  @param url 请求地址
*  @param params 请求参数
*  @param resultBlock 回调地址
*/
-(void)request:(RXNetworkRequestType)type urlString:(NSString *)url params:(id)params result:(RXNetworkResultBlock)resultBlock;

/**
 * 发起网络请求
 *  @param type 请求类型
 *  @param url 请求地址
 *  @param params 请求参数
 *  @param timeoutInterval 超时时间
 *  @param resultBlock 回调地址
 */
-(void)request:(RXNetworkRequestType)type urlString:(NSString *)url params:(id)params timeoutInterval:(NSTimeInterval)timeoutInterval result:(RXNetworkResultBlock)resultBlock;

/**
 * 下载文件
 */
-(void)dataTaskWithUrlString:(NSString *)urlString completionHandler:(void (^)(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error))completionHandler;

@end

NS_ASSUME_NONNULL_END

