//
//  DemoCell.m
//  AnimatedGIFImage
//
//  Created by changcai on 2017/9/5.
//  Copyright © 2017年 changcai. All rights reserved.
//

#import "DemoCell.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import <SDWebImage/UIImage+GIF.h>
#import "WBWebImageView.h"
@implementation DemoCell{
    WBWebImageView *imageView;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        imageView = [[WBWebImageView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
        [self.contentView addSubview:imageView];
       
    }
    return self;
}

- (void) refresh
{
    //[imageView sd_setImageWithURL:[NSURL URLWithString:@"http://storage.slide.news.sina.com.cn/slidenews/77_ori/2017_32/74766_790328_605962.gif"]];
    [imageView WB_downloadIMGOrGif:[NSURL URLWithString:@"http://storage.slide.news.sina.com.cn/slidenews/77_ori/2017_32/74766_790328_605962.gif"]];
}

@end
