//
//  UINavigationController+FBObjcSugar.h
//  FBIObjcSugar
//
//  Created by 张学阳 on 2018/4/11.
//  Copyright © 2018年 张学阳. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (FBObjcSugar)
/// 自定义全屏拖拽返回手势
@property (nonatomic, strong, readonly) UIPanGestureRecognizer *fb_popGestureRecognizer;
@end
