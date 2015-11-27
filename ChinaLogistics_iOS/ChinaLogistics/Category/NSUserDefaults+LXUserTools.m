//
//  NSUserDefaults+LXUserTools.m
//  BossBuy
//
//  Created by chenguandong on 15/7/13.
//  Copyright (c) 2015年 郑州立信科技. All rights reserved.
//

#import "NSUserDefaults+LXUserTools.h"
#import <SSKeychain.h>
@implementation NSUserDefaults (LXUserTools)


+(void)getUserNameAndPassWordFromSSKeychain:(void(^)(NSString*userName)) userName password:(void(^)(NSString*password))password{

    NSArray *arr = [SSKeychain accountsForService:kCppName];
    for (NSDictionary *dic  in arr) {
        
        userName([dic objectForKey:@"acct"]);
        
        password([SSKeychain passwordForService:kCppName account:[dic objectForKey:@"acct"]]);
        
    }
}

+(void)saveUserInfo:(UserModel*)userModel{
    
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    
    
    
     [userDefault setValue:userModel.school forKey:@"school"];
    
    
    [userDefault setValue:userModel.email forKey:@"email"];
    
   
    [userDefault setValue:userModel.grade forKey:@"grade"];
    
    [userDefault setValue:userModel.klass forKey:@"klass"];
    
    [userDefault setValue:userModel.nickName forKey:@"nickName"];
    
    [userDefault setValue:userModel.sheng forKey:@"sheng"];
    
    [userDefault setValue:userModel.shi forKey:@"shi"];
    
    [userDefault setValue:userModel.userIcon forKey:@"userIcon"];
    
    [userDefault setValue:userModel.userName forKey:@"userName"];
    
    [userDefault setValue:userModel.xian forKey:@"xian"];
    
    //>>>>>加入新成员
    [userDefault setValue:userModel.gender forKey:@"gender"];
    [userDefault setValue:userModel.huaShi forKey:@"huaShi"];
    

    [userDefault synchronize];
    

    
}

+(UserModel*)getUserInfo{
    
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    
    UserModel *userModel = [[UserModel alloc]init];
    
    userModel.email = [userDefault stringForKey:@"email"];
    
    userModel.grade = [userDefault stringForKey:@"grade"];
    
    userModel.klass = [userDefault stringForKey:@"klass"];

    userModel.nickName = [userDefault stringForKey:@"nickName"];
    
    userModel.sheng = [userDefault stringForKey:@"sheng"];

    userModel.shi = [userDefault stringForKey:@"shi"];

    userModel.userIcon = [userDefault stringForKey:@"userIcon"];

    userModel.userName = [userDefault stringForKey:@"userName"];
    
     userModel.xian = [userDefault stringForKey:@"xian"];
    
    userModel.school = [userDefault stringForKey:@"school"];

 //>>>>>加入新成员
    userModel.gender =[userDefault stringForKey:@"gender"];
    userModel.huaShi = [userDefault stringForKey:@"huaShi"];
    

    return userModel;
    
}






+(void)cleanAllAccount{
    
    NSArray *arr = [SSKeychain accountsForService:kCppName];
    for (NSDictionary *dic  in arr) {
        
        [SSKeychain deletePasswordForService:kCppName account:[dic objectForKey:@"acct"]];
    }
    
    NSUserDefaults *userDefault = [NSUserDefaults standardUserDefaults];
    
    [userDefault removeObjectForKey:@"email"];
    [userDefault removeObjectForKey:@"grade"];
    [userDefault removeObjectForKey:@"klass"];
    [userDefault removeObjectForKey:@"nickName"];
    
    [userDefault removeObjectForKey:@"sheng"];
    [userDefault removeObjectForKey:@"shi"];
    [userDefault removeObjectForKey:@"userIcon"];
    [userDefault removeObjectForKey:@"userName"];
    [userDefault removeObjectForKey:@"xian"];
    
    
    [userDefault removeObjectForKey:@"gender"];
    [userDefault removeObjectForKey:@"huaShi"];
    
    
    
    
}
@end
