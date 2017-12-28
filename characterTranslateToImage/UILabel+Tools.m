//
//  UILabel+Tools.m
//  characterTranslateToImage
//
//  Created by zhaohang on 2017/12/28.
//  Copyright © 2017年 HangZhao. All rights reserved.
//

#import "UILabel+Tools.h"

@implementation UILabel (Tools)
-(void)setWidth:(CGFloat)width{
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width, self.frame.size.height);
}
-(CGFloat)width{
    return self.frame.size.width;
}
@end
