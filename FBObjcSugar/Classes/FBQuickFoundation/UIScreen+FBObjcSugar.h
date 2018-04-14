//
//  UIScreen+FBObjcSugar.h
//  FBIObjcSugar
//
//  Created by 张学阳 on 2018/4/11.
//  Copyright © 2018年 张学阳. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScreen (FBObjcSugar)
/// 屏幕宽度
+ (CGFloat)fb_screenWidth;
/// 屏幕高度
+ (CGFloat)fb_screenHeight;
/// 分辨率
+ (CGFloat)fb_scale;
@end
