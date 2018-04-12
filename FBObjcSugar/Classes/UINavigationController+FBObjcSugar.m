//
//  UINavigationController+FBObjcSugar.m
//  FBIObjcSugar
//
//  Created by 张学阳 on 2018/4/11.
//  Copyright © 2018年 张学阳. All rights reserved.
//

#import "UINavigationController+FBObjcSugar.h"
#import <objc/runtime.h>

@interface FBFullScreenPopGestureRecognizerDelegate : NSObject <UIGestureRecognizerDelegate>

@property (nonatomic, weak) UINavigationController *navigationController;

@end

@implementation FBFullScreenPopGestureRecognizerDelegate
- (BOOL)gestureRecognizerShouldBegin:(UIPanGestureRecognizer *)gestureRecognizer {
    
    if (self.navigationController.viewControllers.count <= 1) {
        return NO;
    }
    
    if ([[self.navigationController valueForKey:@"_isTransitioning"] boolValue]) {
        return NO;
    }
    
    CGPoint translation = [gestureRecognizer translationInView:gestureRecognizer.view];
    if (translation.x <= 0) {
        return NO;
    }
    
    return YES;
}

@end

@implementation UINavigationController (FBObjcSugar)
+ (void)load {
    
    Method originalMethod = class_getInstanceMethod([self class], @selector(pushViewController:animated:));
    Method swizzledMethod = class_getInstanceMethod([self class], @selector(fb_pushViewController:animated:));
    
    method_exchangeImplementations(originalMethod, swizzledMethod);
}

- (void)fb_pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    if (![self.interactivePopGestureRecognizer.view.gestureRecognizers containsObject:self.fb_popGestureRecognizer]) {
        [self.interactivePopGestureRecognizer.view addGestureRecognizer:self.fb_popGestureRecognizer];
        
        NSArray *targets = [self.interactivePopGestureRecognizer valueForKey:@"targets"];
        id internalTarget = [targets.firstObject valueForKey:@"target"];
        SEL internalAction = NSSelectorFromString(@"handleNavigationTransition:");
        
        self.fb_popGestureRecognizer.delegate = [self fb_fullScreenPopGestureRecognizerDelegate];
        [self.fb_popGestureRecognizer addTarget:internalTarget action:internalAction];
        
        // 禁用系统的交互手势
        self.interactivePopGestureRecognizer.enabled = NO;
    }
    
    if (![self.viewControllers containsObject:viewController]) {
        [self fb_pushViewController:viewController animated:animated];
    }
}

- (FBFullScreenPopGestureRecognizerDelegate *)fb_fullScreenPopGestureRecognizerDelegate {
    FBFullScreenPopGestureRecognizerDelegate *delegate = objc_getAssociatedObject(self, _cmd);
    if (!delegate) {
        delegate = [[FBFullScreenPopGestureRecognizerDelegate alloc] init];
        delegate.navigationController = self;
        
        objc_setAssociatedObject(self, _cmd, delegate, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return delegate;
}

- (UIPanGestureRecognizer *)fb_popGestureRecognizer {
    UIPanGestureRecognizer *panGestureRecognizer = objc_getAssociatedObject(self, _cmd);
    
    if (panGestureRecognizer == nil) {
        panGestureRecognizer = [[UIPanGestureRecognizer alloc] init];
        panGestureRecognizer.maximumNumberOfTouches = 1;
        
        objc_setAssociatedObject(self, _cmd, panGestureRecognizer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return panGestureRecognizer;
}
@end
