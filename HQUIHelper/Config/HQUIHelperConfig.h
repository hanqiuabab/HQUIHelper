//
//  HQUIHelperConfig.h
//  HQUIHelper
//
//  Created by 汉秋 on 2022/9/1.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, HQUIHelperLayoutLibrary) {
    HQUIHelperLayoutLibraryNone,
    HQUIHelperLayoutLibraryMasonry,
};

@interface HQUIHelperConfig : NSObject

/// 作者姓名
@property (nonatomic, strong) NSString *authorName;

/// 项目名称
@property (nonatomic, strong) NSString *projectName;

/// 类前缀
@property (nonatomic, strong) NSString *classPrefix;

/// 左括号是否换行
@property (nonatomic, assign) BOOL newLineLeftParenthesis;

/// 布局第三方库
@property (nonatomic, assign) HQUIHelperLayoutLibrary layoutLibrary;

+ (HQUIHelperConfig *)sharedInstance;

@end

NS_ASSUME_NONNULL_END
