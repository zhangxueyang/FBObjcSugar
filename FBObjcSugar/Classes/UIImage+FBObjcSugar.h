//
//  UIImage+FBObjcSugar.h
//  FBIObjcSugar
//
//  Created by 张学阳 on 2018/4/11.
//  Copyright © 2018年 张学阳. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (FBObjcSugar)
/// 生成指定颜色的一个`点`的图像
///
/// @param color 颜色
///
/// @return 1 * 1 图像
+ (nonnull UIImage *)fb_singleDotImageWithColor:(nonnull UIColor *)color;


/**
 异步绘制图片 切圆角
 根据当前图像，和指定的尺寸，生成圆角图像并且返回

 @param size 切图的角度 一般是imageView 的一半
 @param fillColor   切完图像背景填充颜色
 @param completion 回调传值
 */
- (void)fb_cornerImageWithSize:(CGSize)size
                     fillColor:(UIColor *)fillColor
                    completion:(void (^)(UIImage *image))completion;

@end
