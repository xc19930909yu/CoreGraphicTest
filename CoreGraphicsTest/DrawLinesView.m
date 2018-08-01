//
//  DrawLinesView.m
//  CoreGraphicsTest
//
//  Created by 徐超 on 2018/8/1.
//  Copyright © 2018年 sd. All rights reserved.
//

#import "DrawLinesView.h"

@implementation DrawLinesView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    // 设置线条的样式
    CGContextSetLineCap(context, kCGLineCapRound);
    
    // 绘制线的宽度
    CGContextSetLineWidth(context, 3.0);
    
    // 线条颜色
    CGContextSetStrokeColorWithColor(context, [UIColor orangeColor].CGColor);
    
    
    // 开始绘制
    CGContextBeginPath(context);
    
    // 设置虚线绘制的起点
    CGContextMoveToPoint(context, 10.0, 0);
    
    
    CGFloat lengths[] = {10,10};
    
    // 虚线的长短变化  第二个参数表示第一个虚线绘制时跳过了多少个点  第四个参数表示数组长度
    
    CGContextSetLineDash(context, 0, lengths, 2);
    
    // 绘制虚线的终点
    CGContextAddLineToPoint(context, self.frame.size.width - 20, 0);
    
    // 绘制
    CGContextStrokePath(context);
    
    CGContextClosePath(context);
    
    // lmegths的值{10,10} 表示先绘制
    
    
//    CGContextRef context  = UIGraphicsGetCurrentContext();
//
//    // 设置线条的样式
//    CGContextSetLineCap(context, kCGLineCapRound);
//
//    // 绘制线的宽度
//    CGContextSetLineWidth(context, 3.0);
//
//    // 线的颜色
//    CGContextSetStrokeColorWithColor(context, [UIColor orangeColor].CGColor);
//
//
//    // 开始绘制
//    CGContextBeginPath(context);
//
//    // 设置虚线绘制的起点
//    CGContextMoveToPoint(context, 10.0, 0);
//
//    // lengths的值{10,10} 表示先绘制10个点， 再跳过20个点， 如此反复
//    CGFloat lengths[] = {10,10};
//
//    // 虚线的起始点
//    CGContextSetLineDash(context, 0, lengths, 2);
//
//    // 绘制虚线的终点
//    CGContextAddLineToPoint(context, self.frame.size.width-20, 0);
//
//    // 绘制
//    CGContextStrokePath(context);
//
//    // 关闭图像
//    CGContextClosePath(context);


}

@end
