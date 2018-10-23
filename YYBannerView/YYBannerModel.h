//
//  YYBannerModel.h
//  新型轮播图
//
//  Created by admin on 16/11/14.
//  Copyright © 2016年 admin. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol YYBannerProtocol <NSObject>

@required
@property (nonatomic,strong)NSString * thumb;
@property (nonatomic, strong)NSString * title;


@end



@interface YYBannerModel : NSObject<YYBannerProtocol>

@property (nonatomic,strong)UIColor * textColor;
@property (nonatomic,strong)NSString * thumb;
@property (nonatomic, strong)NSString * title;
@end
