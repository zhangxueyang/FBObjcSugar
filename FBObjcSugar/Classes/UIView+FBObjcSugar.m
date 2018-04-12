//
//  UIView+FBObjcSugar.m
//  FBIObjcSugar
//
//  Created by 张学阳 on 2018/4/11.
//  Copyright © 2018年 张学阳. All rights reserved.
//

#import "UIView+FBObjcSugar.h"

@implementation UIView (FBObjcSugar)
#pragma mark - Frame
- (CGPoint)fb_viewOrigin {
    return self.frame.origin;
}

- (void)setFb_viewOrigin:(CGPoint)fb_viewOrigin {
    CGRect newFrame = self.frame;
    newFrame.origin = fb_viewOrigin;
    self.frame = newFrame;
}

- (CGSize)fb_viewSize {
    return self.frame.size;
}

- (void)setFb_viewSize:(CGSize)fb_viewSize {
    CGRect newFrame = self.frame;
    newFrame.size = fb_viewSize;
    self.frame = newFrame;
}

#pragma mark - Frame Origin
- (CGFloat)fb_x {
    return self.frame.origin.x;
}

- (void)setFb_x:(CGFloat)fb_x {
    CGRect newFrame = self.frame;
    newFrame.origin.x = fb_x;
    self.frame = newFrame;
}

- (CGFloat)fb_y {
    return self.frame.origin.y;
}

- (void)setFb_y:(CGFloat)fb_y {
    CGRect newFrame = self.frame;
    newFrame.origin.y = fb_y;
    self.frame = newFrame;
}

#pragma mark - Frame Size
- (CGFloat)fb_width {
    return self.frame.size.width;
}

- (void)setFb_width:(CGFloat)fb_width {
    CGRect newFrame = self.frame;
    newFrame.size.width = fb_width;
    self.frame = newFrame;
}

- (CGFloat)fb_height {
    return self.frame.size.height;
}

- (void)setFb_height:(CGFloat)fb_height {
    CGRect newFrame = self.frame;
    newFrame.size.height = fb_height;
    self.frame = newFrame;
}

#pragma mark - 截屏
- (UIImage *)fb_capturedImage {
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, YES, 0);
    UIImage *result = nil;
    if ([self drawViewHierarchyInRect:self.bounds afterScreenUpdates:YES]) {
        result = UIGraphicsGetImageFromCurrentImageContext();
    }
    UIGraphicsEndImageContext();
    return result;
}
@end
