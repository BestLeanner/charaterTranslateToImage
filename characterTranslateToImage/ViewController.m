//
//  ViewController.m
//  characterTranslateToImage
//
//  Created by zhaohang on 2017/12/28.
//  Copyright © 2017年 HangZhao. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Tools.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.frame = CGRectMake(0, 50, 40, 16);
    imageView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:imageView];
    imageView.image = [self imageWithString:@"@AngieYo" font:[UIFont systemFontOfSize:16] color:[UIColor redColor]];
}

-(UIImage *)imageWithString:(NSString *)string font:(UIFont *)font color:(UIColor *)color{
    CGSize size = CGSizeMake([string getSizeWithFont:font constrainedWidth:0 numberOfLines:1].width, font.pointSize+3);
    NSDictionary *attributes = @{NSFontAttributeName:font,NSForegroundColorAttributeName:color};
    NSAttributedString *attibuteString = [[NSAttributedString alloc] initWithString:string attributes:attributes];
    UIGraphicsBeginImageContextWithOptions(size, 0, 0);
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetCharacterSpacing(ctx, 10);
    CGContextSetTextDrawingMode(ctx, kCGTextFill);
    CGContextSetRGBFillColor(ctx, 255, 255, 255, 1.0);
    [attibuteString drawInRect:CGRectMake(0, 0, size.width, size.height)];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
