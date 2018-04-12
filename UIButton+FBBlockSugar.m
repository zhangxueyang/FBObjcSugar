//
//  UIButton+FBBlockSugar.m
//  FBObjcSugar
//
//  Created by 张学阳 on 2018/4/12.
//

#import "UIButton+FBBlockSugar.h"
#import <objc/runtime.h>

@implementation UIButton (FBBlockSugar)

static const int target_key;

- (void)fb_BlockAction:(ButtonBlock)blockAction {
    objc_setAssociatedObject(self, &target_key, blockAction, OBJC_ASSOCIATION_COPY_NONATOMIC);
    [self addTarget:self action:@selector(invokeMethod:) forControlEvents:UIControlEventTouchUpInside];
}

- (ButtonBlock)fb_BlockAction {
    ButtonBlock block = objc_getAssociatedObject(self, &target_key);
    return block;
}

- (void)invokeMethod:(id)sender {
    if (self.fb_BlockAction) {
        self.fb_BlockAction(sender);
    }
}
@end
