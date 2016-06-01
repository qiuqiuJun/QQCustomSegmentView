//
//  ViewController.m
//  QQCustomSegmentViewDemo
//
//  Created by quanqi on 16/6/1.
//  Copyright © 2016年 devstore. All rights reserved.
//

#import "ViewController.h"
#import "QQCustomSegmentView.h"

#define DevCurrentSystemVersion [[[UIDevice currentDevice] systemVersion] floatValue]
#define Dev_IOS_7_0 (DevCurrentSystemVersion>=7.0)

@interface ViewController ()<QQCustomSegmentViewDelegate>
@property (nonatomic, strong) QQCustomSegmentView *segment;/**< */
@end

@implementation ViewController
- (void)dealloc
{
    self.segment.delegate = nil;
    self.segment = nil;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.segment = [[QQCustomSegmentView alloc] initWithFrame:CGRectMake(0, 100, CGRectGetWidth(self.view.frame), 45) titleArray:[NSArray arrayWithObjects:@"全部",@"理财",@"任务", nil]];
    self.segment.backgroundColor = [UIColor whiteColor];
    self.segment.delegate = self;
    [self.view addSubview:self.segment];

}
#pragma -mark QQCustomSegmentViewDelegate
- (void)itemAction:(QQCustomSegmentView *)segment itemIndex:(NSInteger)index
{
    NSLog(@"index === %d",index);
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
