//
//  UITextField+FBObjcSugar.h
//  FBIObjcSugar
//
//  Created by 张学阳 on 2018/4/11.
//  Copyright © 2018年 张学阳. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (FBObjcSugar)
/// 实例化 UITextField
///
/// @param placeHolder     占位文本
///
/// @return UITextField
+ (nonnull instancetype)fb_textFieldWithPlaceHolder:(nonnull NSString *)placeHolder;
@end
