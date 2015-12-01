//
//  SelectedViewController.m
//  KKHDome
//
//  Created by xian on 15/11/30.
//  Copyright © 2015年 xian. All rights reserved.
//

#import "SelectedViewController.h"

#import "SelectedTableViewCell.h"
#import "SelectedHeaderView.h"

static NSString *identiferCell = @"selectCell";
@interface SelectedViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic)  UITableView *tabView;

@end

@implementation SelectedViewController

#pragma mark - life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT) style:UITableViewStylePlain];
    self.tabView.delegate = self;
    self.tabView.dataSource = self;
    [self.view addSubview:self.tabView];
    
    [self.tabView registerNib:[UINib nibWithNibName:@"SelectedTableViewCell" bundle:nil] forCellReuseIdentifier:identiferCell];
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 40)];
    view.backgroundColor = [UIColor purpleColor];
    self.tabView.tableHeaderView = view;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource & UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 330;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 35;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    SelectedHeaderView *view = [[SelectedHeaderView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 35)];
   // view.backgroundColor = [UIColor yellowColor];
    return view;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SelectedTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identiferCell];
    
    cell.showImView.image = [UIImage imageNamed:@"1"];
    cell.priceLab.text = @"¥700 ¥2600";
    cell.descriptionLab.text = @"A.B.S|M|九成新";
    cell.zanLab.text = @"25";
    cell.commentLab.text = @"40";
    return cell;
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
