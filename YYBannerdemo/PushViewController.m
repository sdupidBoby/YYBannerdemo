//
//  PushViewController.m
//  YYBannerdemo
//
//  Created by yuans on 16/11/20.
//  Copyright © 2016年 YS. All rights reserved.
//

#import "Masonry.h"
#import "PushViewController.h"
#import "YYBannerView.h"
@interface PushViewController ()
@property (weak, nonatomic) IBOutlet YYBannerView *xibBannerView;

@end

@implementation PushViewController
#pragma mark ****************************** life cycle          ******************************
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self SetUpSelfProperty];
    
    [self httpForView];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)dealloc
{
    
}

#pragma mark ****************************** System Delegate     ******************************

#pragma mark ****************************** Custom Delegate     ******************************

#pragma mark ****************************** event   Response    ******************************

#pragma mark ****************************** private Methods     ******************************

#pragma mark ****************************** HTTP Server         ******************************
-(void)httpForView
{
    
}
#pragma mark ****************************** getter and setter   ******************************
/**
 *  getter实际是工厂方法  使用SetUpSelfProperty更好  方便查看各个subView关系
 */
- (void)SetUpSelfProperty
{
/* xib initialize */
    NSMutableArray * arr = [[NSMutableArray alloc]init];
    for (int i = 1; i <= 3; i ++ ) {
        YYBannerModel * model = [[YYBannerModel alloc]init];
        model.thumb = [NSString stringWithFormat:@"CF_Album_BG5%d",i ];
        model.title = [NSString stringWithFormat:@"CF_Album_BG5%d",i ];
        [arr addObject:model];
    }
    
    
    [self.xibBannerView setAutoScroll:NO];
    [self.xibBannerView setYYBannerType:YYBannerType_illusion];
    [_xibBannerView setDataWithArray:arr TitleStyle:YYBannerTitleStyleLeft PageStyle:YYBannerPageStyleRight];
    
    _xibBannerView.callBack = ^(YYBannerModel * model , int index){
        NSLog(@"XibIndex %d", index);
    };
    
/* code initialize */
    YYBannerView * bannerView = [[YYBannerView alloc]initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), 300)];
    [self.view addSubview:bannerView];
    [bannerView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(65);
        make.left.right.equalTo(self.view);
        make.height.mas_equalTo(200);
    }];
    [bannerView setDataWithArray:arr TitleStyle:YYBannerTitleStyleLeft PageStyle:YYBannerPageStyleRight];
    [bannerView setYYBannerType:YYBannerType_illusion];

    bannerView.callBack = ^(YYBannerModel * model , int index){
        NSLog(@"CodeIndex %d", index);
    };

}


@end
