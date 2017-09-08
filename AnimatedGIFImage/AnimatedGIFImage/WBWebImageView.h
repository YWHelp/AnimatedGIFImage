//
//  WBWebImageView.h
//  AnimatedGIFImage
//
//  Created by changcai on 2017/9/7.
//  Copyright © 2017年 changcai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WBWebImageView : UIImageView
- (void)WB_downloadIMGOrGif:(NSURL *)url;
@end
