//
//  HQUIResponder.m
//  HQUIHelper
//
//  Created by 汉秋 on 2022/9/1.
//

#import "HQUIResponder.h"

@implementation HQUIResponder
@synthesize interfaceProperties = _interfaceProperties;
@synthesize extensionProperties = _extensionProperties;

- (NSString *)curView
{
    return @"self";
}

- (NSMutableArray *)interfaceProperties
{
    if (!_interfaceProperties) {
        _interfaceProperties = [[NSMutableArray alloc] init];
    }
    return _interfaceProperties;
}

- (NSMutableArray *)extensionProperties
{
    if (!_extensionProperties) {
        _extensionProperties = [[NSMutableArray alloc] init];
    }
    return _extensionProperties;
}


@end
