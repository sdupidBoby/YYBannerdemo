//
//  YYBannerView.h
//  新型轮播图
//
//  Created by admin on 16/11/14.
//  Copyright © 2016年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YYBannerModel.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_OPTIONS(NSUInteger, YYBannerType) {
    YYBannerType_normal = 1 << 1, //正常滑动 default
    YYBannerType_illusion = 1 << 0, //视差 （凤凰）
    YYBannerType_UNillusion = 1 << 2 //无视差
};

typedef NS_ENUM(NSUInteger, YYBannerPageStyle)
{
    YYBannerPageStyleNone,//default
    YYBannerPageStyleLeft,
    YYBannerPageStyleCenter,
    YYBannerPageStyleRight
};

typedef NS_ENUM(NSUInteger, YYBannerTitleStyle)
{
    YYBannerTitleStyleNone, //default
    YYBannerTitleStyleLeft,
    YYBannerTitleStyleCenter,
    YYBannerTitleStyleRight
};


typedef void(^YYBannerCallBlock)(id<YYBannerProtocol> model,int index);

@protocol YYBannerDelegate;

@interface YYBannerView : UIView
@property (nonatomic, assign)id<YYBannerDelegate> delegate;
@property (nonatomic, assign)BOOL autoScroll; //timer default:YES
@property (nonatomic,strong) UIImage * placeHoldImage;
@property (nonatomic,assign) NSTimeInterval  timerInterval; //default:3s
@property (nonatomic,copy)YYBannerCallBlock callBack;


@property (nonatomic, assign,readonly)YYBannerType bannerType;
@property (nonatomic, assign,readonly)YYBannerPageStyle bannerPageType;
@property (nonatomic, assign,readonly)YYBannerTitleStyle bannerTitleType;

/**  回调 */
-(void)changToTapFunc:(YYBannerCallBlock)callBack;

//Xib创建 单独设置type
-(void)setYYBannerType:(YYBannerType)type;

-(void)setDataWithArray:(NSArray<YYBannerProtocol> *)dataAyy TitleStyle:(YYBannerTitleStyle)Tstyle PageStyle:(YYBannerPageStyle)Pstyle;

-(instancetype)init NS_UNAVAILABLE;

@end

@protocol YYBannerDelegate <NSObject>

- (void)YYBannerView:(YYBannerView *)view bannerModel:(id<YYBannerProtocol>)model index:(int )index;

@end
NS_ASSUME_NONNULL_END

@interface NSArray (YYBanner)
/**
 *  Get the object at a given index in safe mode (nil if self is empty or out of range)
 *
 *  @param index The index
 *
 *  @return Return the object at a given index in safe mode (nil if self is empty or out of range)
 */
- (id)safeObjectAtIndex:(NSUInteger)index;
@end
