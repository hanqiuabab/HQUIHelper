//
//  HQUIHelperConfig.m
//  HQUIHelper
//
//  Created by 汉秋 on 2022/9/1.
//

#import "HQUIHelperConfig.h"
#import "NSDate+Extension.h"
@implementation HQUIHelperConfig

+ (HQUIHelperConfig *)sharedInstance {
    static HQUIHelperConfig *config;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        config = [[HQUIHelperConfig alloc] init];
        if (![[NSUserDefaults standardUserDefaults] objectForKey:@"isFirstRun"]) {
            [[NSUserDefaults standardUserDefaults] setObject:@"NO" forKey:@"isFirstRun"];
            //默认配置
            [config setAuthorName:@"HQUIHelper"];
            [config setProjectName:@"HQCity"];
            [config resetToDefaultConfig];
        }
    });
    return config;
}

- (void)resetToDefaultConfig {
    [self setClassPrefix:@"HQ"];
    [self setNewLineLeftParenthesis:NO];
    [self setLayoutLibrary:HQUIHelperLayoutLibraryMasonry];
}

- (NSString *)copyrightCodeByFileName:(NSString *)fileName {
    NSString *authorName = self.authorName;
    NSString *projectName = self.projectName;
    NSString *dateString = [NSString stringWithFormat:@"%d/%d/%d",
                            (int)[[NSDate date] year],
                            (int)[[NSDate date] month],
                            (int)[[NSDate date] day]];
    NSString *codeString = [NSString stringWithFormat:@"//\n//  %@\n//  %@\n//\n//  Created by %@ on %@.\n//\n\n",
                            fileName,
                            projectName,
                            authorName,
                            dateString];
    return codeString;
}

//MARK: 用户名
- (NSString *)authorName {
    NSString *authorName = [[NSUserDefaults standardUserDefaults] objectForKey:@"authorName"];
    return authorName;
}

- (void)setAuthorName:(NSString *)authorName {
    [[NSUserDefaults standardUserDefaults] setObject:authorName ? authorName : @"" forKey:@"authorName"];
}

//MARK: 项目名称
- (NSString *)projectName {
    NSString *projectName = [[NSUserDefaults standardUserDefaults] objectForKey:@"projectName"];
    return projectName;
}

- (void)setProjectName:(NSString *)projectName {
    [[NSUserDefaults standardUserDefaults] setObject:projectName ? projectName : @"" forKey:@"projectName"];
}

//MARK: 类前缀
- (NSString *)classPrefix {
    NSString *classPrefix = [[NSUserDefaults standardUserDefaults] objectForKey:@"classPrefix"];
    return classPrefix;
}

- (void)setClassPrefix:(NSString *)classPrefix {
    [[NSUserDefaults standardUserDefaults] setObject:classPrefix ? classPrefix : @"" forKey:@"classPrefix"];
}

//MARK: 风格
- (BOOL)newLineLeftParenthesis {
    NSNumber *number = [[NSUserDefaults standardUserDefaults] objectForKey:@"newLineLeftParenthesis"];
    return number.boolValue;
}

- (void)setNewLineLeftParenthesis:(BOOL)newLineLeftParenthesis {
    [[NSUserDefaults standardUserDefaults] setObject:@(newLineLeftParenthesis) forKey:@"newLineLeftParenthesis"];
}

//MARK: 布局
- (HQUIHelperLayoutLibrary)layoutLibrary {
    NSNumber *number = [[NSUserDefaults standardUserDefaults] objectForKey:@"layoutLibrary"];
    return number.integerValue;
}

- (void)setLayoutLibrary:(HQUIHelperLayoutLibrary)layoutLibrary {
    [[NSUserDefaults standardUserDefaults] setObject:@(layoutLibrary) forKey:@"layoutLibrary"];

}
@end
