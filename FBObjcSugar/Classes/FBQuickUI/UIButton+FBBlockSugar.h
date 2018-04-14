//
//  UIButton+FBBlockSugar.h
//  123
//
//  Created by 张学阳 on 2018/4/12.
//  Copyright © 2018年 FBObjcSugar. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef  void(^fb_btnBlockAction)(UIButton *sender);

@interface UIButton (FBBlockSugar)

/**
 给按钮添加 block 事件

 @param blockAction 事件
 */
- (void)fb_setBlockAction:(fb_btnBlockAction)blockAction;

- (fb_btnBlockAction)fb_blockAction;

@end
