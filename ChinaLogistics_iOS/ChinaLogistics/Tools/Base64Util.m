//
//  Base64Util.m
//  zeropartner_iOS_Tools
//
//  Created by chen.gd on 14-7-9.
//  Copyright (c) 2014年 zeropartner. All rights reserved.
//

#import "Base64Util.h"

@implementation Base64Util



//将base64解码的图片进行编码
+ (NSString *)encodeImageFromImage:(UIImage*)image
{
    // NSData from the Base64 encoded str
    
    NSData *_data = UIImageJPEGRepresentation(image, 1.0f);
    
    return  [_data base64EncodedStringWithOptions:0];
}
@end
