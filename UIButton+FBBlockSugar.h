//
//  UIButton+FBBlockSugar.h
//  FBObjcSugar
//
//  Created by 张学阳 on 2018/4/12.
//

#import <UIKit/UIKit.h>

typedef  void(^ButtonBlock)(UIButton *sender);

@interface UIButton (FBBlockSugar)

/**
 给按钮添加block方法

 @param blockAction 点击事件
 */
- (void)fb_BlockAction:(ButtonBlock)blockAction;

- (ButtonBlock)fb_BlockAction;

@end
