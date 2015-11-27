//
//  Constant.h
//  RedLiving
//
//  Created by 冠东 陈 on 10/26/15.
//  Copyright © 2015 冠东陈. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <SDWebImage/UIImageView+WebCache.h>
#import "NetWorkTools.h"
#import "AppDelegate.h"
#import "BaseViewController.h"
#import "BaseTabBarController.h"
#import "BaseTableViewController.h"
#import "BaseCollectionViewController.h"
#import "MBProgressHUD+LXProgressHUD.h"


//define this constant if you want to use Masonry without the 'mas_' prefix
#define MAS_SHORTHAND

//define this constant if you want to enable auto-boxing for default syntax
#define MAS_SHORTHAND_GLOBALS

#import "Masonry.h"

//屏幕宽度
#define LX_SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width

//屏幕高度
#define LX_SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height

//16进制 颜色值 例子
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

//获取屏幕尺寸匹配当前手机型号
#define iPhone4_4S ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) : NO)

#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

#define iPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) : NO)

//获取 AppDelegate 实例
#define SharedApp ((AppDelegate *)[[UIApplication sharedApplication] delegate])

//获取系统版本
#define IOS_VERSION [[[UIDevice currentDevice] systemVersion] floatValue]

//打印http 请求返回 string 字符串
#define LXLogResponseString NSLog(@"%@",[operation responseString]);


//重写NSLog,Debug模式下打印日志和当前行数
#if DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr,"\nfunction:%s line:%d content:%s\n", __FUNCTION__, __LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define NSLog(FORMAT, ...) nil
#endif

//这是一个常量使用的demo
UIKIT_EXTERN NSString *const ConstantDemo;
