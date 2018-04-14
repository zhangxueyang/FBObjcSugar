//
//  UIScreen+FBObjcSugar.m
//  FBIObjcSugar
//
//  Created by 张学阳 on 2018/4/11.
//  Copyright © 2018年 张学阳. All rights reserved.
//

#import "UIScreen+FBObjcSugar.h"

@implementation UIScreen (FBObjcSugar)
+ (CGFloat)fb_screenWidth {
    return [UIScreen mainScreen].bounds.size.width;
}

+ (CGFloat)fb_screenHeight {
    return [UIScreen mainScreen].bounds.size.height;
}

+ (CGFloat)fb_scale {
    return [UIScreen mainScreen].scale;
}
@end
