//
//  UserModel.h
//  StudyProject
//
//  Created by chenguandong on 15/6/1.
//  Copyright (c) 2015年 chenguandong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserModel : NSObject


/**
 *  市
 */
@property (nonatomic, copy) NSString *shi;


/**
 *  头像
 */
@property (nonatomic, copy) NSString *userIcon;

/**
 *  用户名
 */
@property (nonatomic, copy) NSString *userName;

/**
 *  年级
 */
@property (nonatomic, copy) NSString *grade;

/**
 *  班级
 */
@property (nonatomic, copy) NSString *klass;

/**
 *  邮箱
 */
@property (nonatomic, copy) NSString *email;


/**
 *  省
 */
@property (nonatomic, copy) NSString *sheng;
/**
 *  县
 */
@property (nonatomic, copy) NSString *xian;


/**
 *  昵称
 */
@property (nonatomic, copy) NSString *nickName;

/**
 *  性别
 */
@property (nonatomic, copy) NSString *gender;


@property (nonatomic, copy) NSString *huaShi;


@property(nonatomic,copy)NSString *school;
/**
 *  设置UserModel 的值
 *
 *  @param userDic user Dic
 */
-(void)setUserModelWithDic:(NSDictionary*)userDic;

@end
