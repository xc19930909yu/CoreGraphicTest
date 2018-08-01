//
//  DrawCircletView.m
//  CoreGraphicsTest
//
//  Created by 徐超 on 2018/8/1.
//  Copyright © 2018年 sd. All rights reserved.
//

#import "DrawCircletView.h"

@implementation DrawCircletView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
//    // 1.获取当前上下文
//    CGContextRef contextRef = UIGraphicsGetCurrentContext();
//
//    // 2. 描述路径 画椭圆的方法
//    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(10, 10, 100, 100)];
//
//    // 添加路径到上下文
//    CGContextAddPath(contextRef, path.CGPath);
//    // 设置颜色
//    [[UIColor redColor]setFill];
//    // 显示上下文
//    CGContextFillPath(contextRef);
    
   [self drawCircle];
    
}

- (void)drawCircle{
    // 1.获取当前上下文
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    // 2.描述路径
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(self.bounds.size.width*0.5, self.bounds.size.height*0.5) radius:self.bounds.size.width*0.4 startAngle:0 endAngle:M_PI*1.5 clockwise:YES];
    
    [path addLineToPoint:CGPointMake(self.bounds.size.width*0.5, self.bounds.size.height*0.5)];
    
    [path addLineToPoint:CGPointMake(self.bounds.size.width*0.5 + self.bounds.size.width*0.4, self.bounds.size.width*0.5)];
    
    // 3，添加路径到上下文
    CGContextAddPath(contextRef, path.CGPath);
    
    // 4. 设置颜色
    [[UIColor whiteColor]setFill];
    
    // 4.显示上下文 显示一个实心圆
     CGContextFillPath(contextRef);

    // 显示一个空心圆，描边
    //CGContextStrokePath(contextRef);
    
}



@end
