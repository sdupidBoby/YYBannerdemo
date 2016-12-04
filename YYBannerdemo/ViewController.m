//
//  ViewController.m
//  YYBannerdemo
//
//  Created by admin on 16/11/17.
//  Copyright © 2016年 YS. All rights reserved.
//

#import "ViewController.h"
#import "PushViewController.h"
@interface ViewController ()

@end

@implementation ViewController

#pragma mark ****************************** life cycle          ******************************
-(void)viewDidLoad{
    [super viewDidLoad];
    
    [self setSubViewsProperty];
    [self HTTPForXmtUnitilView];
}
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

#pragma mark ****************************** System Delegate     ******************************

#pragma mark ****************************** Custom Delegate     ******************************

#pragma mark ****************************** event   Response    ******************************

#pragma mark ****************************** private Methods     ******************************

#pragma mark ****************************** HTTP Server         ******************************
-(void)HTTPForXmtUnitilView{
    
}
#pragma mark ****************************** getter and setter   ******************************
- (void)setSubViewsProperty{
   
}


@end
