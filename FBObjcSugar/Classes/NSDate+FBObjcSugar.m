//
//  NSDate+FBObjcSugar.m
//  FBIObjcSugar
//
//  Created by 张学阳 on 2018/4/11.
//  Copyright © 2018年 张学阳. All rights reserved.
//

#import "NSDate+FBObjcSugar.h"

@implementation NSDate (FBObjcSugar)
#pragma mark - 单例
+ (NSDateFormatter *)fb_sharedDateFormatter {
    static NSDateFormatter *dateFormatter;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        dateFormatter = [[NSDateFormatter alloc] init];
        dateFormatter.locale = [NSLocale localeWithLocaleIdentifier:@"en"];
    });
    
    return dateFormatter;
}

+ (NSCalendar *)fb_sharedCalendar {
    static NSCalendar *calendar;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        calendar = [NSCalendar currentCalendar];
    });
    
    return calendar;
}

#pragma mark - 日期方法
+ (NSString *)fb_dateStringWithDelta:(NSTimeInterval)delta {
    [self fb_sharedDateFormatter].dateFormat = @"yyyy-MM-dd HH:mm:ss";
    
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:delta];
    
    return [[self fb_sharedDateFormatter] stringFromDate:date];
}

- (NSString *)fb_dateDescription {
    
    NSUInteger units = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    NSDateComponents *dateComponents = [[NSDate fb_sharedCalendar] components:units fromDate:self];
    NSDateComponents *thisComponents = [[NSDate fb_sharedCalendar] components:units fromDate:[NSDate date]];
    
    // 今天
    if (dateComponents.year == thisComponents.year
        && dateComponents.month == thisComponents.month
        && dateComponents.day == thisComponents.day) {
        
        NSInteger delta = (NSInteger)[[NSDate date] timeIntervalSinceDate:self];
        
        if (delta < 60) {
            return @"刚刚";
        }
        if (delta < 3600) {
            return [NSString stringWithFormat:@"%zd 分钟前", delta / 60];
        }
        return [NSString stringWithFormat:@"%zd 小时前", delta / 3600];
    }
    
    NSString *format = @"MM-dd HH:mm";
    
    if (dateComponents.year != thisComponents.year) {
        format = [@"yyyy-" stringByAppendingString:format];
    }
    [NSDate fb_sharedDateFormatter].dateFormat = format;
    
    return [[NSDate fb_sharedDateFormatter] stringFromDate:self];
}
@end
