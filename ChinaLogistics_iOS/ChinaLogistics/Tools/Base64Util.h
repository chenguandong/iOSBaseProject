//
//  Base64Util.h
//  zeropartner_iOS_Tools
//
//  Created by chen.gd on 14-7-9.
//  Copyright (c) 2014年 zeropartner. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface Base64Util : NSObject


//将base64解码的图片进行编码
+ (NSString *)encodeImageFromImage:(UIImage*)image;
@end
