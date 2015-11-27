//
//  NSString+LXEmptyString.m
//  GoodLuck
//
//  Created by 冠东 陈 on 15/9/8.
//  Copyright (c) 2015年 郑州立信科技. All rights reserved.
//

#import "NSString+LXEmptyString.h"

@implementation NSString (LXEmptyString)


+(NSString*)isEmptyString:(NSString*)str{

    if (str) {
        return str;
    }else{
    
        return @"";
    }
}

@end
