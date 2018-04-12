//
//  UIColor+FBObjcSugar.m
//  FBIObjcSugar
//
//  Created by 张学阳 on 2018/4/11.
//  Copyright © 2018年 张学阳. All rights reserved.
//

#import "UIColor+FBObjcSugar.h"

@implementation UIColor (FBObjcSugar)
#pragma mark - 颜色函数
+ (instancetype)fb_colorWithHex:(u_int32_t)hex {
    u_int8_t red = (hex & 0xFF0000) >> 16;
    u_int8_t green = (hex & 0x00FF00) >> 8;
    u_int8_t blue = hex & 0x0000FF;
    
    return [UIColor fb_colorWithRed:red green:green blue:blue];
}

+ (instancetype)fb_colorWithRed:(u_int8_t)red green:(u_int8_t)green blue:(u_int8_t)blue {
    return [UIColor colorWithRed:red / 255.0 green:green / 255.0 blue:blue / 255.0 alpha:1.0];
}

+ (instancetype)fb_randomColor {
    u_int8_t red = arc4random_uniform(256);
    u_int8_t green = arc4random_uniform(256);
    u_int8_t blue = arc4random_uniform(256);
    
    return [UIColor fb_colorWithRed:red green:green blue:blue];
}

#pragma mark - 颜色值
- (u_int8_t)fb_redValue {
    return (u_int8_t)(CGColorGetComponents(self.CGColor)[0] * 255);
}

- (u_int8_t)fb_greenValue {
    return (u_int8_t)(CGColorGetComponents(self.CGColor)[1] * 255);
}

- (u_int8_t)fb_blueValue {
    return (u_int8_t)(CGColorGetComponents(self.CGColor)[2] * 255);
}

- (CGFloat)fb_alphaValue {
    return CGColorGetComponents(self.CGColor)[3];
}
@end
