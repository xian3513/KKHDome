//
//  MainTabBarViewController.m
//  KKHDome
//
//  Created by xian on 15/11/30.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "MainTabBarViewController.h"
#import "TabbarView.h"
@interface MainTabBarViewController ()<TabbarViewDelegat>

@end

@implementation MainTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBar.hidden = YES;
    TabbarView *tabbar = [[TabbarView alloc]init];
    tabbar.delegate = self;
    tabbar.imageArray = @[[UIImage imageNamed:@"btn0"],[UIImage imageNamed:@"btn1"],[UIImage imageNamed:@"btnAdd0"],[UIImage imageNamed:@"btn2"],[UIImage imageNamed:@"btn3"],];
    
    tabbar.selectedImageArray = @[[UIImage imageNamed:@"btn0s"],[UIImage imageNamed:@"btn1s"],[UIImage imageNamed:@"btnAdd0"],[UIImage imageNamed:@"btn2s"],[UIImage imageNamed:@"btn3s"],];
    [tabbar showInView:self.view];
    
    
//    [self.navigationController.navigationBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor], NSForegroundColorAttributeName, [UIFont fontWithName:@"XinGothic-W4S" size:11], NSFontAttributeName, nil]];

}

- (void)tabbar:(TabbarView *)tabbarView didSeletedRowAtIndex:(NSInteger)index {
    NSLog(@"click :%ld",index);
    if(index != 2){
      self.selectedIndex = index;
    } else if (index == 4){
      
    }
    if(index != 4){
      [tabbarView updateRedIconWithShow:YES atIndex:4];
    }else {
      [tabbarView updateRedIconWithShow:NO atIndex:4];
    }
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
