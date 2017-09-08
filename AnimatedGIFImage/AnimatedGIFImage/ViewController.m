//
//  ViewController.m
//  AnimatedGIFImage
//
//  Created by changcai on 2017/9/5.
//  Copyright © 2017年 changcai. All rights reserved.
//

#import "ViewController.h"
#import "DemoCell.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "UIImage+GIF.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

/**   */
@property (nonatomic, strong) UITableView *tableView;
/**   */
@property (nonatomic, strong) UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self constructUI];
//    self.imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
//    [self.view addSubview: self.imageView];
//    [self.imageView sd_setImageWithURL:[NSURL URLWithString:@"http://storage.slide.news.sina.com.cn/slidenews/77_ori/2017_32/74766_790328_605962.gif"]];
}

- (void)constructUI
{
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    _tableView.backgroundColor = [UIColor whiteColor];
    [_tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    [self.view addSubview:_tableView];
    
}

#pragma mark  - tableView -
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 100;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    DemoCell *cell = [tableView  dequeueReusableCellWithIdentifier:@"DemoCell"];
    if(!cell){
        cell = [[DemoCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DemoCell"];
    }
    [cell refresh];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 110;
}


@end
