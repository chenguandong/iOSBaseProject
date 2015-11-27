//
//  ValidateTools.h
//  StudyProject
//
//  Created by chenguandong on 15/6/2.
//  Copyright (c) 2015年 chenguandong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface ValidateTools : NSObject

/**
 *  验证是否为邮箱
 *
 *  @param email 邮箱地址
 *
 *  @return YES  是  NO 不是
 */
+(BOOL)validateEmail:(NSString *)email;


/**
 *  验证是否为手机号码
 *
 *  @param mobileNum 手机号码
 *
 *  @return YES  是 NO 不是
 */
+(BOOL)validateMobile:(NSString *)mobileNum;

/**
 *  验证是否手机号码或者邮箱
 *
 *  @param validateStr 验证的内容
 *
 *  @return YES 是 NO不是
 */
+(BOOL)validateEmailORPhoneNum:(NSString*)validateStr;

/**
 *  验证密码是否符合标准
 *
 *  @param passWordStr 密码
 *
 *  @return YES  是  NO 非法
 */
+(BOOL)validatePassword:(NSString*)passWordStr;


/**
 *  判断字符串是否为空
 *
 *  @param validateStr 需要验证的字符串
 *
 *  @return YES  为空  NO 不为空
 */
+(BOOL)validateIsNull:(NSString*)validateStr;


/**
 *  验证用户注册是否通过
 *
 *  @param userName       用户名
 *  @param password       密码
 *  @param repeatPassword 重复密码
 *  @param view           提示View 的位置
 *
 *  @return YES 验证通过  NO 验证不通过
 */
+(BOOL)validateRegisterWithUserName:(NSString*)userName
                           password:(NSString*)password
                     repeatPassword:(NSString*)repeatPassword
                               view:(UIView*)view;


/**
 *  切换TextField 验证输入的信息
 *
 *  @param textField   当前输入框
 *  @param passwordStr 密码
 *  @param view        显示提醒的View
 */
+(void)validateOnChangeTextField:(UITextField*)textField password:(NSString*)passwordStr showInView:(UIView*)view;
@end
