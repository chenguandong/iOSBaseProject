//
//  UserModel.m
//  StudyProject
//
//  Created by chenguandong on 15/6/1.
//  Copyright (c) 2015年 chenguandong. All rights reserved.
//

#import "UserModel.h"

@implementation UserModel



-(void)setUserModelWithDic:(NSDictionary*)userDic{
    
    self.email =userDic[@"email"];
    
    self.grade = userDic[@"grade"];
    
    self.klass = userDic[@"klass"];

    self.nickName = userDic[@"nickName"];
    
    self.sheng = userDic[@"sheng"];

    self.shi = userDic[@"shi"];

    self.userIcon = userDic[@"userIcon"];

    self.userName = userDic[@"userName"];
    
    self.xian = userDic[@"xian"];
    
    self.school = userDic[@"school"];
    
    self.gender = userDic[@"sex"];
    
    self.huaShi = userDic[@"studio"];
    

}



@end
