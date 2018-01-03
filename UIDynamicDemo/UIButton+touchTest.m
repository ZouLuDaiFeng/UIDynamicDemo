//
//  UIButton+touchTest.m
//  UIDynamicDemo
//
//  Created by ShiPanpan on 2018/1/3.
//  Copyright © 2018年 ZhangChuan. All rights reserved.
//

#import "UIButton+touchTest.h"

@implementation UIButton (touchTest)

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"UIButton--touchesBegan");

//    CGPoint point = [[touches anyObject] locationInView:self.view];
//    [self gravityBehavior:point];
    [super touchesBegan:touches withEvent:event];
}

@end
