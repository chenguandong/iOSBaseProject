//
//  NetWorkTools.h
//  iOSStudy
//
//  Created by chenguandong on 15/1/31.
//  Copyright (c) 2015年 chenguandong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking.h>

//服务器地址
static NSString *const kBaseUrl = @"http://116.255.239.201:8080/mschool/service?";



typedef void(^isNetwork) (BOOL isNetwork);

typedef void(^success)(AFHTTPRequestOperation *operation, id responseObject) ;
typedef void(^error)(AFHTTPRequestOperation *operation, NSError *error);
typedef void(^isNetwork) (BOOL isNetwork);

@interface NetWorkTools : NSObject



+ (instancetype)sharedInstance;

///**
// *  从SSKeychain 获取用户名密码
// *
// *  @param userName 用户名
// *  @param password 密码
// */
//+(void)getUserNameAndPassWordFromSSKeychain:(void(^)(NSString*userName)) userName password:(void(^)(NSString*password))password;

/**
 *  发送Http请求
 *
 *  @param parameters   参数
 *  @param success      成功回调
 *  @param error        失败回调
 *  @param isNetworking 网络回调
 */
+(void)postHttp :(id)parameters success:(success)success error:(error)error isNetworking:(isNetwork)isNetworking;

/**
 *  上传图片请求
 *
 *  @param parameters   参数
 *  @param success      成功回调
 *  @param error        失败回调
 *  @param isNetworking 网络回调
 */
+(void)postHttpForImageUpload :(id)parameters success:(success)success error:(error)error isNetworking:(isNetwork)isNetworking ;

/*
 *检查网络连接注册通知
 */
+(void)checkNetworking:(isNetwork)isNetwork;



/**
 *  上传语音
 *
 *  @param parameters   参数
 *  @param success      成功回调
 *  @param error        失败回到
 *  @param isNetworking 没有网络回调
 */
+(void)postHttpForFileUpload :(id)parameters success:(success)success error:(error)error isNetworking:(isNetwork)isNetworking;



    
@end
