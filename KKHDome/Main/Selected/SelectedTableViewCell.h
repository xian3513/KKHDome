//
//  SelectedTableViewCell.h
//  KKHDome
//
//  Created by xian on 15/11/30.
//  Copyright © 2015年 xian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SelectedTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *showImView;
@property (weak, nonatomic) IBOutlet UILabel *priceLab;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLab;
@property (weak, nonatomic) IBOutlet UIView *zanView;
@property (weak, nonatomic) IBOutlet UILabel *zanLab;
@property (weak, nonatomic) IBOutlet UILabel *commentLab;


@end
