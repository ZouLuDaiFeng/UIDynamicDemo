//
//  ViewController.m
//  UIDynamicDemo
//
//  Created by ShiPanpan on 2018/1/2.
//  Copyright © 2018年 ZhangChuan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

UIDynamicAnimator *animator;
// 重力仿真
UIGravityBehavior *gravity;
// 碰撞检测
UICollisionBehavior *collision;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // 创建一个仿真者[UIDynamicAnimator] 用来仿真物理行为
//    animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
//
//    // 创建重力的物理仿真行为，并设置具体的items(需要仿真的view)
//    gravity = [[UIGravityBehavior alloc] initWithItems:@[]];
//
//    // 碰撞检测
//    collision = [[UICollisionBehavior alloc] initWithItems:@[]];
//    // 设置不要出边界，碰到边界会被反弹
//    collision.translatesReferenceBoundsIntoBoundary = YES;
//
//
//    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
//    view.backgroundColor = [UIColor greenColor];
//    [self.view addSubview:view];
//
////    [gravity addItem:view];
//    [collision addItem:view];
    
    
    UIButton *bigButton = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 200, 200)];
    bigButton.backgroundColor = [UIColor greenColor];
    [self.view addSubview:bigButton];
//    [button setTitle:@"去界面1" forState:UIControlStateNormal];
    [bigButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [bigButton addTarget:self action:@selector(tapBigButton) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *smallButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 100, 200, 100)];
    smallButton.backgroundColor = [UIColor redColor];
    [self.view addSubview:smallButton];
//    [button setTitle:@"去界面1" forState:UIControlStateNormal];
//    [smallButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [smallButton addTarget:self action:@selector(tapSmallButton) forControlEvents:UIControlEventTouchUpInside];
//    smallButton.userInteractionEnabled = NO;
    
//    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGesture)];
//    [smallButton addGestureRecognizer:tap];
}

- (void)tapGesture {
    NSLog(@"UITapGestureRecognizer");
}

- (void)tapBigButton {
    NSLog(@"大");
}

- (void)tapSmallButton {
    NSLog(@"小");
}

- (void)gravityBehavior:(CGPoint)point {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(point.x, point.y, 50, 50)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    [gravity addItem:view];
    [collision addItem:view];
    
    // 将重力仿真行为添加给仿真者实现仿真效果，开始仿真
    [animator addBehavior:gravity];
    // 开始仿真
    [animator addBehavior:collision];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"ViewController--touchesBegan");

//    CGPoint point = [[touches anyObject] locationInView:self.view];
//    [self gravityBehavior:point];
}


@end
