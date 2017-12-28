//
//  NSString+Tools.m
//  characterTranslateToImage
//
//  Created by zhaohang on 2017/12/28.
//  Copyright © 2017年 HangZhao. All rights reserved.
//

#import "NSString+Tools.h"
#import "UILabel+Tools.h"

@implementation NSString (Tools)
-(CGSize)getSizeWithFont:(UIFont *)font constrainedWidth:(CGFloat)width numberOfLines:(NSInteger)numberOfLines{
    if (width == 0) {
        width = 1000;
    }
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, width, 0)];
    label.width = width;
    label.text = self;
    label.font = font;
    label.numberOfLines = numberOfLines;
    [label sizeToFit];
    CGSize size = label.frame.size;
    return size;
}
@end
