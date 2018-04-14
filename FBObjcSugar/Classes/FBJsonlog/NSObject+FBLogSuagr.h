//
//  NSObject+FBLogSuagr.h
//  FBObjcSugar
//
//  Created by 张学阳 on 2018/4/14.
//

#import <Foundation/Foundation.h>

@interface NSObject (FBLogSuagr)
-(void)fb_descriptionJson:(NSDictionary *)dicM callBack:(void(^)(NSString * logMessage))callBack;
@end
