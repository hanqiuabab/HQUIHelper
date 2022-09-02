//
//  HQUIHelperConfig.m
//  HQUIHelper
//
//  Created by 汉秋 on 2022/9/1.
//

#import "HQUIHelperConfig.h"

@implementation HQUIHelperConfig

+ (HQUIHelperConfig *)sharedInstance {
    static HQUIHelperConfig *config;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        config = [[HQUIHelperConfig alloc] init];
        
    });
    return config;
}

@end
