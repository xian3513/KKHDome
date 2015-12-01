//
//  SelectedHeaderView.m
//  KKHDome
//
//  Created by xian on 15/11/30.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "SelectedHeaderView.h"
#import "UIView+Frame.h"
#import "CommonMacros.h"
@implementation SelectedHeaderView

-(instancetype)initWithFrame:(CGRect)frame {
    if(self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        CGFloat pace = 3;
        UIImageView *icon = [[UIImageView alloc]initWithFrame:CGRectMake(10, pace, self.height-2*pace, self.height-2*pace)];
        [self addSubview:icon];
        
        UILabel *nameLab = [[UILabel alloc]initWithFrame:CGRectMake(icon.right+5, 0, 120, 30)];
        [self addSubview:nameLab];
        
        UIButton *attentionBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        attentionBtn.frame = CGRectMake(SCREEN_WIDTH-10-40, pace*2, 40, self.height-4*pace);
        attentionBtn.layer.cornerRadius = 5;
        attentionBtn.layer.borderColor = [UIColor grayColor].CGColor;
        attentionBtn.layer.borderWidth = 0.5;
        [attentionBtn setTitle:@"关注" forState:UIControlStateNormal];
        [attentionBtn setFont:[UIFont systemFontOfSize:13]];
        [attentionBtn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        [self addSubview:attentionBtn];
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
