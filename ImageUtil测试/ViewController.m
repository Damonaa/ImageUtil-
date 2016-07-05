//
//  ViewController.m
//  ImageUtil测试
//
//  Created by 李小亚 on 16/7/5.
//  Copyright © 2016年 李小亚. All rights reserved.
//

#import "ViewController.h"
#import "ImageUtil.h"
#import "ColorMatrix.h"

@interface ViewController ()
/**
 *  用于展示处理的图片
 */
@property (weak, nonatomic) IBOutlet UIImageView *dispalyImageView;
/**
 *  原始图
 */
@property (nonatomic, strong) UIImage *original;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.original = _dispalyImageView.image;
}
//原图
- (IBAction)originalImage {
    _dispalyImageView.image = _original;
}
//LOMO
- (IBAction)lomoImage {
    _dispalyImageView.image = [ImageUtil imageWithImage:_original withColorMatrix:colormatrix_lomo];
}
//黑白
- (IBAction)blackWhiteImage {
    _dispalyImageView.image = [ImageUtil imageWithImage:_original withColorMatrix:colormatrix_heibai];
}

@end
