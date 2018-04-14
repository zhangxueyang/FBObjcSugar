//
//  UIGestureRecognizer+FBBlocjSugar.h
//  123
//
//  Created by 张学阳 on 2018/4/12.
//  Copyright © 2018年 FBObjcSugar. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef  void(^fb_gestureBlock)(UIGestureRecognizer *gesture);

@interface UIGestureRecognizer (FBBlocjSugar)

+ (instancetype)gestureRecognizerWithTarget:(id)target Action:(fb_gestureBlock)action;

@end
