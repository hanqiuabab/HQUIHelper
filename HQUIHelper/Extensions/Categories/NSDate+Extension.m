//
//  NSDate+Extension.m
//  HQUIHelper
//
//  Created by 汉秋 on 2022/9/2.
//

#import "NSDate+Extension.h"

@implementation NSDate (Extension)

- (NSUInteger)day {
    return [NSDate day:self];
}
- (NSUInteger)month {
    return [NSDate month:self];
}
- (NSUInteger)year {
    return [NSDate year:self];
}

+ (NSUInteger)day:(NSDate *)date {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSInteger day = [calendar component:NSCalendarUnitDay fromDate:date];
    return day;
}

+ (NSUInteger)month:(NSDate *)date {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSInteger month = [calendar component:NSCalendarUnitMonth fromDate:date];
    return month;
}
+ (NSUInteger)year:(NSDate *)date {
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSInteger year = [calendar component:NSCalendarUnitYear fromDate:date];
    return year;
}
@end
