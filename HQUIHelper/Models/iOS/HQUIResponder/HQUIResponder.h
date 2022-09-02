//
//  HQUIResponder.h
//  HQUIHelper
//
//  Created by 汉秋 on 2022/9/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HQUIResponder : NSObject

/// 当期类的容器
@property (nonatomic, strong, readonly) NSString *curView;

/// 接口中的属性列表
@property (nonatomic, strong, readonly) NSMutableArray *interfaceProperties;

/// 类拓展中的属性列表
@property (nonatomic, strong, readonly) NSMutableArray *extensionProperties;

@end

NS_ASSUME_NONNULL_END
