//
//  DrawLineView.m
//  CoreGraphicsTest
//
//  Created by 徐超 on 2018/8/1.
//  Copyright © 2018年 sd. All rights reserved.
//

#import "DrawLineView.h"

@implementation DrawLineView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

/// 画线 
- (void)drawRect:(CGRect)rect {
    //Drawing code
   
    // 1.获取上下文
    CGContextRef  contextRef  = UIGraphicsGetCurrentContext();
    // 2.描述路径
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    // 起点
    [path  moveToPoint:CGPointMake(0,0)];
    
    // 第二个点
    [path addLineToPoint:CGPointMake(100, 100)];
    
    ///  第三个点
    [path addLineToPoint:CGPointMake(200, 0)];
    
    [path addLineToPoint:CGPointMake(100, 100)];
    
    [path addLineToPoint:CGPointMake(0, 200)];
    
    [path addLineToPoint:CGPointMake(100, 100)];
    
    [path addLineToPoint:CGPointMake(200, 200)];
    // 设置颜色
    [[UIColor whiteColor] setStroke];
    
    //3.添加路径
    CGContextAddPath(contextRef, path.CGPath);
    
    // 显示路径
    CGContextStrokePath(contextRef);
}

@end
