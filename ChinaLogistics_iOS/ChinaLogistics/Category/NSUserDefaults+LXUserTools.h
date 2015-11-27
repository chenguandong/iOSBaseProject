//
//  NSUserDefaults+LXUserTools.h
//  BossBuy
//
//  Created by chenguandong on 15/7/13.
//  Copyright (c) 2015年 郑州立信科技. All rights reserved.
//  说明:  所有用户信息操作必须经过这个类获取
//
#import <Foundation/Foundation.h>
#import "UserModel.h"


static NSString *const kCppName = @"www.redliving.com";

@interface NSUserDefaults (LXUserTools)
/**
 *   存入用户信息
 *
 *  @param userModel 用户信息
 */
+(void)saveUserInfo:(UserModel*)userModel;


/**
 *  获取用户信息
 *
 *  @return 用户信息
 */
+(UserModel*)getUserInfo;

/**
 *  清空所有账户
 */
+(void)cleanAllAccount;


/**
 *  获取用户名密码
 *
 *  @param userName 用户名回调
 *  @param password 密码回调
 */
+(void)getUserNameAndPassWordFromSSKeychain:(void(^)(NSString*userName)) userName password:(void(^)(NSString*password))password;

@end
