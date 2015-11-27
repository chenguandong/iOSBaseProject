//
//  AdScrollView.h
//  BossBuy
//
//  Created by chenguandong on 15/7/1.
//  Copyright (c) 2015年 郑州立信科技. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AdScrollViewDelegate <NSObject>

-(void)scrolledLastPage;

@end



@interface AdScrollView : UIView

@property(nonatomic,strong)NSArray *imageArray;


@property(nonatomic,weak)id<AdScrollViewDelegate>delegate;

@property(nonatomic,assign)BOOL hiddenUIPageControl;

@end
