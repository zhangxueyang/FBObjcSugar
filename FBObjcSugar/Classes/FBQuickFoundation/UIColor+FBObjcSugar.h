//
//  UIColor+FBObjcSugar.h
//  FBIObjcSugar
//
//  Created by 张学阳 on 2018/4/11.
//  Copyright © 2018年 张学阳. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (FBObjcSugar)
#pragma mark - 颜色函数
/// 使用十六进制数字生成颜色
///
/// @param hex hex，格式 0xFFEEDD
///
/// @return UIColor
+ (nonnull instancetype)fb_colorWithHex:(u_int32_t)hex;

/// 使用指定的 r / g / b 数值生成颜色
///
/// @param red   red
/// @param green green
/// @param blue  blue
///
/// @return UIColor
+ (nonnull instancetype)fb_colorWithRed:(u_int8_t)red green:(u_int8_t)green blue:(u_int8_t)blue;

/// 生成随机颜色
///
/// @return UIColor
+ (nonnull instancetype)fb_randomColor;

#pragma mark - 颜色值
/// 返回当前颜色的 red 的 0～255 值
- (u_int8_t)fb_redValue;
/// 返回当前颜色的 green 的 0～255 值
- (u_int8_t)fb_greenValue;
/// 返回当前颜色的 blue 的 0～255 值
- (u_int8_t)fb_blueValue;
/// 返回当前颜色的 alpha 值
- (CGFloat)fb_alphaValue;
@end
