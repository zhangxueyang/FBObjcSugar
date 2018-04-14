//
//  UIButton+FBBlockSugar.m
//  123
//
//  Created by 张学阳 on 2018/4/12.
//  Copyright © 2018年 FBObjcSugar. All rights reserved.
//

#import "UIButton+FBBlockSugar.h"
#import <objc/runtime.h>

@implementation UIButton (FBBlockSugar)
static const int target_key;

/**
 给按钮添加 block 事件
 
 @param blockAction 事件
 */
- (void)fb_setBlockAction:(fb_btnBlockAction)blockAction
{
    objc_setAssociatedObject(self, &target_key, blockAction, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(invokeMethod:) forControlEvents:UIControlEventTouchUpInside];
}

- (fb_btnBlockAction)fb_blockAction
{
    fb_btnBlockAction block = objc_getAssociatedObject(self, &target_key);
    return block;
}

- (void)invokeMethod:(id)sender {
    if (self.fb_blockAction) {
        self.fb_blockAction(sender);
    }
}
@end
