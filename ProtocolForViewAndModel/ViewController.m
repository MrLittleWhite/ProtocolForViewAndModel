//
//  ViewController.m
//  hehe
//
//  Created by lazy-iOS2 on 16/1/26.
//  Copyright © 2016年 lazy-iOS2. All rights reserved.
//

#import "ViewController.h"

#import "CustomTableViewCell.h"
#import "AppleModel.h"
#import "BananaModel.h"

@interface ViewController ()<UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.tableView.dataSource = self;
    [self.tableView registerClass:[CustomTableViewCell class] forCellReuseIdentifier:@"xxx"];
    
    self.dataSource = [NSMutableArray array];
    
    //create models
    for (NSInteger i = 0; i < 5; i ++) {
        AppleModel *model = [[AppleModel alloc] init];
        model.nickName = [NSString stringWithFormat:@"Jobs's number.%@ Apple",@(i)];
        if (i) {
            model.Price = @(10000*i);
        }
        [self.dataSource addObject:model];
    }
    for (NSInteger i = 0; i < 5; i ++) {
        BananaModel *model = [[BananaModel alloc] init];
        model.name = [NSString stringWithFormat:@"Mr. Banana%@", @(i)];
        model.introduce = [NSString stringWithFormat:@"I'm Mr.LittleWhite's food, banana weight %@ kilo", @(i+10)];
        [self.dataSource addObject:model];
    }

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"xxx" forIndexPath:indexPath];
    [cell loadModel:self.dataSource[indexPath.row]];
    return cell;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
