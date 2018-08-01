//
//  ViewController.m
//  CoreGraphicsTest
//
//  Created by 徐超 on 2018/8/1.
//  Copyright © 2018年 sd. All rights reserved.
//

#import "ViewController.h"
#import "DrawLineView.h"
#import "DrawCircletView.h"
#import "DrawLinesView.h"
#import "LineView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 画线条
    //    DrawLineView *line  = [[DrawLineView alloc]initWithFrame:CGRectMake(100, 100, 200, 200)];
    //    line.backgroundColor = [UIColor grayColor];
    //    [self.view addSubview:line];
    
    
    // 画圆
//    DrawCircletView *cicleView = [[DrawCircletView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
//
//    cicleView.backgroundColor = [UIColor grayColor];
//
//    [self.view addSubview:cicleView];
    
    
// 画虚线
//    DrawLinesView *drawLines = [[DrawLinesView alloc] initWithFrame:CGRectMake(0, 300, self.view.frame.size.width, 10)];
//
//    drawLines.backgroundColor = [UIColor whiteColor];
//
//    [self.view addSubview:drawLines];

    
    
/// 绘制文字
//    //1.获取当前上下文
//    CGContextRef contextRef = UIGraphicsGetCurrentContext();
//    //2.创建文字
//    NSString * str = @"纸巾艺术";
//    //设置字体样式
//    NSMutableDictionary * dict = [NSMutableDictionary dictionary];
//    //NSFontAttributeName:字体大小
//    dict[NSFontAttributeName] = [UIFont systemFontOfSize:25];
//    //字体前景色
//    dict[NSForegroundColorAttributeName] = [UIColor blueColor];
//    //字体背景色
//    dict[NSBackgroundColorAttributeName] = [UIColor redColor];
//    //字体阴影
//    NSShadow * shadow = [[NSShadow alloc]init];
//    //阴影偏移量
//    shadow.shadowOffset = CGSizeMake(2, 2);
//    //阴影颜色
//    shadow.shadowColor = [UIColor greenColor];
//    //高斯模糊
//    shadow.shadowBlurRadius = 5;
//    dict[NSShadowAttributeName] = shadow;
//    //字体间距
//    dict[NSKernAttributeName] = @10;
//    //绘制到上下文
//    //从某一点开始绘制 默认 0 0点
//    //    [str drawAtPoint:CGPointMake(100, 100) withAttributes:nil];
//    //绘制区域设置
//    [str drawInRect:rect withAttributes:dict];
//    //添加到上下文
//    CGContextStrokePath(contextRef);

    
      /// 绘制图片
//    //1.获取当前的上下文
//    CGContextRef contextRef = UIGraphicsGetCurrentContext();
//    //2.加载图片
//    //这里顺便咯嗦一句：使用imageNamed加载图片是会有缓存的
//    //我们这里只需要加载一次就够了，不需要多次加载，所以不应该保存这个缓存
//    //    UIImage * image = [UIImage imageNamed:@"222"]; //所以可以换一种方式去加载
//    UIImage *image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"222.png" ofType:nil]];
//
//    //    //绘制的大小位置
//    //    [image drawInRect:rect];
//
//
//    //    //从某个点开始绘制
//    //    [image drawAtPoint:CGPointMake(0, 0)];
//
//    //绘制一个多大的图片，并且设置他的混合模式以及透明度
//    //Rect：大小位置
//    //blendModel：混合模式
//    //alpha：透明度
//    [image drawInRect:rect blendMode:kCGBlendModeNormal  alpha:1];
//
//    //从某一点开始绘制图片，并设置混合模式以及透明度
//    //point:开始位置
//    //blendModel：混合模式
//    //alpha：透明度
//    //    [image drawAtPoint:CGPointMake(0, 0) blendMode:kCGBlendModeNormal alpha:1];
//
//    //添加到上下文
//    CGContextFillPath(contextRef);
    
//   渐变的线条
//    LineView *lineView = [[LineView alloc]  initWithFrame:CGRectMake(0, 0, 300, 300)];
//
//    lineView.backgroundColor = [UIColor whiteColor];
//
//    lineView.center = self.view.center;
//
//    [self.view addSubview:lineView];
    
    
    // 方案二： 渐变
//    CAGradientLayer *layer = [CAGradientLayer layer];
//
//    // 设置大小
//    layer.frame = CGRectMake(0, 400, 300, 3);
//
//    // 设置颜色
//    layer.colors = @[(__bridge id)[UIColor colorWithRed:204.0 / 255.0 green:224.0 / 255.0 blue:244.0 / 255.0 alpha:1].CGColor,
//                     (__bridge id)[UIColor colorWithRed:29.0 / 255.0 green:156.0 / 255.0 blue:215.0 / 255.0 alpha:1].CGColor,
//                     (__bridge id)[UIColor colorWithRed:0.0 / 255.0 green:50.0 / 255.0 blue:126.0 / 255.0 alpha:1].CGColor];
//
//    // 渐变层的相对位置，起点为0，终点为1，中间点为（point-startpoint）/（endpoint-startpoint）
//    layer.locations = @[@0,@0.5,@1];
//
//    // 渐变方向
//    layer.startPoint = CGPointMake(0, 1);
//
//    layer.endPoint = CGPointMake(1, 1);
//
//    [self.view.layer addSublayer:layer];
    
    
//    //1、开启上下文  图片截屏
//    UIGraphicsBeginImageContextWithOptions(self.view.bounds.size, NO, 0);
//    //2.获取当前上下文
    
//    CGContextRef ctx = UIGraphicsGetCurrentContext();
//
//    //3.截屏
//    [self.view.layer renderInContext:ctx];
    
//    //4、获取新图片
//    UIImage * newImage = UIGraphicsGetImageFromCurrentImageContext();
//
//    //5.转化成为Data
//    //compressionQuality:表示压缩比 0 - 1的取值范围
//    NSData * data = UIImageJPEGRepresentation(newImage, 1);
//    //6、关闭上下文
//    UIGraphicsEndImageContext();
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
