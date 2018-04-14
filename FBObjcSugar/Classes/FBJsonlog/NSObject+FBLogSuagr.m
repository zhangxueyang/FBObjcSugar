//
//  NSObject+FBLogSuagr.m
//  FBObjcSugar
//
//  Created by 张学阳 on 2018/4/14.
//

#import "NSObject+FBLogSuagr.h"

@implementation NSObject (FBLogSuagr)
-(void)fb_descriptionJson:(NSDictionary *)dicM callBack:(void(^)(NSString * logMessage))callBack
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSString *logString;
        @try {
            logString=[[NSString alloc] initWithData:[NSJSONSerialization dataWithJSONObject:dicM options:NSJSONWritingPrettyPrinted error:nil] encoding:NSUTF8StringEncoding];
            callBack ? callBack(logString) : nil;
        } @catch (NSException *exception) {
            NSString *reason = [NSString stringWithFormat:@"reason:%@",exception.reason];
            logString = [NSString stringWithFormat:@"转换失败:\n%@,\n转换终止,输出如下:\n%@",reason,self.description];
        } @finally {
            
        }
    });
}
@end
