//
//  AppGlobalSetting.m
//  RedLiving
//
//  Created by 冠东 陈 on 10/26/15.
//  Copyright © 2015 冠东陈. All rights reserved.
//

#import "AppGlobalSetting.h"

@implementation AppGlobalSetting

+(void)setGlobalCache{
    NSURLCache *URLCache = [[NSURLCache alloc] initWithMemoryCapacity:4 * 1024 * 1024
                                                         diskCapacity:20 * 1024 * 1024
                                                             diskPath:nil];
    [NSURLCache setSharedURLCache:URLCache];
}


+(void)setGlobalStyle{
    
    //设置tabBar的默认颜色
    [UITabBar appearance].tintColor = [UIColor orangeColor];
    
    //设置tabBar 默认背景颜色
    [UITabBar appearance].backgroundColor = [UIColor whiteColor];
    
    
    //设置tabBar背景颜色255 222 173
    //[UITabBar appearance].barTintColor = UIColorFromRGB(0x067AB5);
    
    
    //设置导航条的默认颜色

    [UINavigationBar appearance].barTintColor = [UIColor whiteColor];
    
    //设置导航栏字体样式
    [[UINavigationBar appearance] setTitleTextAttributes: [NSDictionary dictionaryWithObjectsAndKeys: [UIColor blackColor], NSForegroundColorAttributeName, nil, NSShadowAttributeName, [UIFont systemFontOfSize:18], NSFontAttributeName, nil]];
    
    
    //导航返回按钮颜色
    [[UINavigationBar appearance] setTintColor:[UIColor blackColor]];
    

    //隐藏返回按钮后面的文字
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -60)
                                                         forBarMetrics:UIBarMetricsDefault];
}

@end
