//
//  NSDate+Extension.h
//  HQUIHelper
//
//  Created by 汉秋 on 2022/9/2.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (Extension)

- (NSUInteger)day;
- (NSUInteger)month;
- (NSUInteger)year;

+ (NSUInteger)day:(NSDate *)date;
+ (NSUInteger)month:(NSDate *)date;
+ (NSUInteger)year:(NSDate *)date;
@end

NS_ASSUME_NONNULL_END
