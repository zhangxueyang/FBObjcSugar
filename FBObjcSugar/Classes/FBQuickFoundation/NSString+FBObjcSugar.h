//
//  NSString+FBObjcSugar.h
//  FBIObjcSugar
//
//  Created by 张学阳 on 2018/4/11.
//  Copyright © 2018年 张学阳. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSString (FBObjcSugar)

@end


@interface NSString (FBPath)
/// 拼接了`文档目录`的全路径
@property (nullable, nonatomic, readonly) NSString *fb_documentDirectory;
/// 拼接了`缓存目录`的全路径
@property (nullable, nonatomic, readonly) NSString *fb_cacheDirecotry;
/// 拼接了临时目录的全路径
@property (nullable, nonatomic, readonly) NSString *fb_tmpDirectory;

@end

@interface NSString (FBBase64)
/// BASE 64 编码的字符串内容
@property(nullable, nonatomic, readonly) NSString *fb_base64encode;
/// BASE 64 解码的字符串内容
@property(nullable, nonatomic, readonly) NSString *fb_base64decode;
@end


