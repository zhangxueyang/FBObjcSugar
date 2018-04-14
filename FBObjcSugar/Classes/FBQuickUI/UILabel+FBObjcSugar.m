//
//  UILabel+FBObjcSugar.m
//  FBIObjcSugar
//
//  Created by 张学阳 on 2018/4/11.
//  Copyright © 2018年 张学阳. All rights reserved.
//

#import "UILabel+FBObjcSugar.h"

@implementation UILabel (FBObjcSugar)

+ (instancetype)fb_label {
    return [self fb_labelWithFontSize:14 textColor:[UIColor darkGrayColor] alignment:NSTextAlignmentLeft];
}

+ (instancetype)fb_labelWithFontSize:(CGFloat)fontSize {
    return [self fb_labelWithFontSize:fontSize textColor:[UIColor darkGrayColor] alignment:NSTextAlignmentLeft];
}

+ (instancetype)fb_labelWithFontSize:(CGFloat)fontSize textColor:(UIColor *)textColor {
    return [self fb_labelWithFontSize:fontSize textColor:textColor alignment:NSTextAlignmentLeft];
}

+ (instancetype)fb_labelWithFontSize:(CGFloat)fontSize textColor:(UIColor *)textColor alignment:(NSTextAlignment)alignment {
    
    UILabel *label = [[self alloc] init];
    
    label.font = [UIFont systemFontOfSize:fontSize];
    label.textColor = textColor;
    label.numberOfLines = 0;
    label.textAlignment = alignment;
    
    [label sizeToFit];
    
    return label;
}
@end
