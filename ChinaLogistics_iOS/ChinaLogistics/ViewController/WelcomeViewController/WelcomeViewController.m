//
//  WelcomeViewController.m
//  RedLiving
//
//  Created by 冠东 陈 on 10/26/15.
//  Copyright © 2015 冠东陈. All rights reserved.
//

#import "WelcomeViewController.h"

@interface WelcomeViewController ()

@end

@implementation WelcomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    [NetWorkTools checkNetworking:^(BOOL isNetwork) {
        

        if (isNetwork) {   // 有网络逻辑处理
            
        }else{    //没有网络逻辑处理
            [MBProgressHUD showHUDWithTextAutoHidden:@"没有网络"];
        }
        
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
