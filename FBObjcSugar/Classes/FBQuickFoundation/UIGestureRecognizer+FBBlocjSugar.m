//
//  UIGestureRecognizer+FBBlocjSugar.m
//  123
//
//  Created by 张学阳 on 2018/4/12.
//  Copyright © 2018年 FBObjcSugar. All rights reserved.
//

#import "UIGestureRecognizer+FBBlocjSugar.h"
#import <objc/message.h>

@implementation UIGestureRecognizer (FBBlocjSugar)


+ (instancetype)gestureRecognizerWithTarget:(id)target Action:(fb_gestureBlock)action {
    return [[self alloc] initWithTarget:target Block:action];
}


static const int target_key;

- (instancetype)initWithTarget:(id)target Block:(fb_gestureBlock)action {
    [self addBlock:action];
    self = [self initWithTarget:self action:@selector(invokeMethod:)];
    return self;
}

- (void)addBlock:(fb_gestureBlock)block {
    if (block) {
        objc_setAssociatedObject(self, &target_key,block, OBJC_ASSOCIATION_COPY_NONATOMIC);
    }
}

- (void)invokeMethod:(id)sender {
    fb_gestureBlock block = objc_getAssociatedObject(self, &target_key);
    if (block) {
        block(sender);
    }
}
@end
