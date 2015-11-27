//
//  AdScrollView.m
//  BossBuy
//
//  Created by chenguandong on 15/7/1.
//  Copyright (c) 2015年 郑州立信科技. All rights reserved.
//

#import "AdScrollView.h"

@interface AdScrollView ()<UIScrollViewDelegate>
@property(nonatomic,strong)UIScrollView *scrollView;
@property(nonatomic,strong)UIPageControl *pageControl;

@property(nonatomic,strong)NSMutableArray *imageViewsArr;

@end

@implementation AdScrollView{

}

-(void)dealloc{
    _scrollView = nil;
    _pageControl = nil;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _imageViewsArr = [[NSMutableArray alloc]init];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

        _scrollView = [[UIScrollView alloc]init];
        
        _scrollView.layer.contents = (__bridge id)([UIImage imageNamed:@"default"].CGImage);
        _scrollView.layer.contentsGravity =@"resizeAspect";

        _scrollView.showsHorizontalScrollIndicator = NO;
        _scrollView.pagingEnabled = YES;
        _scrollView.delegate = self;
        
        _scrollView.bounces = NO;
        
  
        // 添加PageControl
        _pageControl = [[UIPageControl alloc] init];
        
        _pageControl.bounds = CGRectMake(0, 0, 150, 50);
     
        // 设置非选中页的圆点颜色
        //_pageControl.pageIndicatorTintColor = [UIColor whiteColor];
        // 设置选中页的圆点颜色
        //_pageControl.currentPageIndicatorTintColor = [UIColor grayColor];
        
        // 禁止默认的点击功能
        _pageControl.enabled = NO;
        

        [self addSubview:_scrollView];
        
        [self addSubview:_pageControl];
    
        
    }
    return self;
}

- (void)setHiddenUIPageControl:(BOOL)hiddenUIPageControl{

    _pageControl.hidden  =hiddenUIPageControl;
}


-(void)setImageArray:(NSArray *)imageArray{

    _imageArray  = [imageArray copy];
    
    
    // height == 0 代表 禁止垂直方向滚动
    _scrollView.contentSize = CGSizeMake(_imageArray.count * LX_SCREEN_WIDTH, 0);
    
    _pageControl.numberOfPages = _imageArray.count; // 一共显示多少个圆点（多少页）

    for (UIView *view in _scrollView.subviews) {
        [view removeFromSuperview];
    }
    
    for (int i = 0; i< imageArray.count; i++) {

        NSLog(@"%@",_imageArray[i] );
        
        UIImageView *imageView = [[UIImageView alloc] init];
        // 1.设置frame

        imageView.contentMode = UIViewContentModeScaleAspectFit;

        imageView.backgroundColor = [UIColor lightGrayColor];
        
        imageView.image  = [UIImage imageNamed:@"default"];
        
        if ([_imageArray[i] hasPrefix:@"http"]) {
            
             [imageView sd_setImageWithURL:_imageArray[i] placeholderImage:[UIImage imageNamed:@"default"]];
        }else{
           
            imageView.image = [UIImage imageNamed:_imageArray[i]];
        }
        
        imageView.tag = i;
        
        [imageView setContentMode:UIViewContentModeScaleToFill];
        
        imageView.userInteractionEnabled = YES;
        
        UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(photoTapped:)];
        
        [imageView addGestureRecognizer:singleTap];//点击图片事件

        [_scrollView addSubview:imageView];
        
        [_imageViewsArr addObject:imageView];

    }

}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    
    
    _scrollView.frame = CGRectMake(0, 0, LX_SCREEN_WIDTH,self.frame.size.height);
    
    _scrollView.contentSize = CGSizeMake(_imageArray.count * LX_SCREEN_WIDTH, 0);
    
    _scrollView.contentOffset = CGPointMake(_pageControl.currentPage*LX_SCREEN_WIDTH, 0);
    
    //dian dian
    
    _pageControl.center = CGPointMake(LX_SCREEN_WIDTH * 0.5, self.frame.size.height - 10);
    
    for (int i = 0; i<_imageArray.count; i++) {
        
        UIImageView *imageView = _imageViewsArr[i];
        
        imageView.frame = CGRectMake(i * LX_SCREEN_WIDTH, 0, LX_SCREEN_WIDTH, self.frame.size.height);
        
    }
    
}

-(void)photoTapped:(id)sender{
    
//    UITapGestureRecognizer *singleTap = (UITapGestureRecognizer *)sender;
//    
//    UIImageView *imageView  = (UIImageView*)singleTap.view;
    

}


#pragma mark - UIScrollView的代理方法
#pragma mark 当scrollView正在滚动的时候调用
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    int page = scrollView.contentOffset.x / scrollView.frame.size.width;
    //    NSLog(@"%d", page);
    
    // 设置页码
    _pageControl.currentPage = page;
    
    if (page==_imageArray.count-1) {
        
        [_delegate scrolledLastPage];
    }
}



@end
