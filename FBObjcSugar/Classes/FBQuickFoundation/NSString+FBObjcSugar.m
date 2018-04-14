//
//  NSString+FBObjcSugar.m
//  FBIObjcSugar
//
//  Created by 张学阳 on 2018/4/11.
//  Copyright © 2018年 张学阳. All rights reserved.
//

#import "NSString+FBObjcSugar.h"

@implementation NSString (FBObjcSugar)

@end

@implementation NSString (FBPath)
- (NSString *)fb_documentDirectory {
    return [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES).firstObject stringByAppendingPathComponent:self];
}

- (NSString *)fb_cacheDirecotry {
    return [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).firstObject stringByAppendingPathComponent:self];
}

- (NSString *)fb_tmpDirectory {
    return [NSTemporaryDirectory() stringByAppendingPathComponent:self];
}
@end

@implementation NSString (FBBase64)
- (NSString *)fb_base64encode {
    NSData *data = [self dataUsingEncoding:NSUTF8StringEncoding];
    
    return [data base64EncodedStringWithOptions:0];
}

- (NSString *)fb_base64decode {
    NSData *data = [[NSData alloc] initWithBase64EncodedString:self options:0];
    
    return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}
@end
