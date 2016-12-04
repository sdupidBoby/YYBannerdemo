# YYBannerdemo
iOS 实现凤凰新闻的视觉差轮播图
/* code initialize */

    NSMutableArray * arr = [[NSMutableArray alloc]init];
    for (int i = 1; i <= 3; i ++ ) {
        YYBannerModel * model = [[YYBannerModel alloc]init];
        model.thumb = [NSString stringWithFormat:@"CF_Album_BG5%d",i ];
        model.title = [NSString stringWithFormat:@"CF_Album_BG5%d",i ];
        [arr addObject:model];
    }
    
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
