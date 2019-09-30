//
//  StoreProcessView.m
//  yibaidian
//
//  Created by 李朋朋 on 2019/9/30.
//  Copyright © 2019 Taiga. All rights reserved.
//

#import "StoreProcessView.h"

@implementation StoreProcessView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


- (void)drawRect:(CGRect)rect{
    
//    CGRect frame = rect;
//
//    frame.size.width = frame.size.height - 26;
//
//    rect = frame;
    // 绘制带上箭头的框
    [self drawTriangleWithRect:rect];
}


/// 画三角形
- (void)drawTriangleWithRect:(CGRect)frame{
    // 获取当前图形，视图推入堆栈的图形，相当于你所要绘制图形的图纸
    CGContextRef ctx =UIGraphicsGetCurrentContext();
    
    // 创建一个新的空图形路径
    CGContextBeginPath(ctx);
    
    // 启动位置 x,y
    CGFloat origin_x = frame.origin.x + 13;
    
    CGFloat origin_y = frame.origin.y + 10;
    
    //箭头的左边点
    CGFloat first_x = frame.origin.x + 230;
    
    CGFloat first_y = frame.origin.y + 10;
    
    // 箭头的上顶点
    CGFloat  second_x = frame.origin.x + 230 + 7;
    
    CGFloat second_y = frame.origin.y;
    
    // 箭头右边点
    CGFloat third_x = frame.origin.x + 230 + 14;
    
    CGFloat third_y = frame.origin.y + 10;
    
    // 右上方的顶点
    CGFloat fourth_x = frame.origin.x + frame.size.width - 13;
    
    CGFloat fourth_y = frame.origin.y + 10;
    
    // 右下方顶点
    CGFloat fifth_x = frame.origin.x + frame.size.width - 13;
    
    CGFloat fifth_y = frame.origin.y + frame.size.height;
    
    // 左下方顶点
    CGFloat sixth_x = frame.origin.x + 13;
    
    CGFloat sixth_y = frame.origin.y + frame.size.height;
    
    CGContextMoveToPoint(ctx, origin_x, origin_y);
    
    CGContextAddLineToPoint(ctx, first_x, first_y);
    
    
    CGContextAddLineToPoint(ctx, second_x, second_y);
    
    CGContextAddLineToPoint(ctx, third_x, third_y);
    
    CGContextAddLineToPoint(ctx, fourth_x, fourth_y);
    
    CGContextAddLineToPoint(ctx, fifth_x, fifth_y);
    
    CGContextAddLineToPoint(ctx, sixth_x, sixth_y);
    
    
    UIColor *fillColor = [UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1.0];
    
    CGContextSetFillColorWithColor(ctx, fillColor.CGColor);
    
    CGContextFillPath(ctx);
    
}

@end
