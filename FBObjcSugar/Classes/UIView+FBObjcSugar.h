//
//  UIView+FBObjcSugar.h
//  FBIObjcSugar
//
//  Created by 张学阳 on 2018/4/11.
//  Copyright © 2018年 张学阳. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (FBObjcSugar)
#pragma mark - Frame
/// 视图原点
@property (nonatomic) CGPoint fb_viewOrigin;
/// 视图尺寸
@property (nonatomic) CGSize fb_viewSize;

#pragma mark - Frame Origin
/// frame 原点 x 值
@property (nonatomic) CGFloat fb_x;
/// frame 原点 y 值
@property (nonatomic) CGFloat fb_y;

#pragma mark - Frame Size
/// frame 尺寸 width
@property (nonatomic) CGFloat fb_width;
/// frame 尺寸 height
@property (nonatomic) CGFloat fb_height;

#pragma mark - 截屏
/// 当前视图内容生成的图像
@property (nonatomic, readonly, nullable)UIImage *fb_capturedImage;
@end
