//
//  HQGeneralSettingViewController.m
//  HQUIHelper
//
//  Created by 汉秋 on 2022/9/2.
//

#import "HQGeneralSettingViewController.h"

@interface HQGeneralSettingViewController ()<NSTextFieldDelegate>

@property (weak) IBOutlet NSTextField *projectNameTF;
@property (weak) IBOutlet NSTextField *authorNameTF;
@property (weak) IBOutlet NSTextField *classPrefixTF;
@property (weak) IBOutlet NSButton *leftParenthesisInNewLine;
@property (weak) IBOutlet NSComboBox *layoutMethod;

@end

@implementation HQGeneralSettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self loadData];
}

- (void)viewWillDisappear {
    [super viewWillDisappear];
    [[NSNotificationCenter defaultCenter] postNotificationName:NOTI_CLASS_PROPERTY_EDIT object:nil userInfo:nil];
}

- (void)loadData {
    self.projectNameTF.stringValue = [HQUIHelperConfig sharedInstance].projectName;
    self.authorNameTF.stringValue = [HQUIHelperConfig sharedInstance].authorName;
    self.classPrefixTF.stringValue = [HQUIHelperConfig sharedInstance].classPrefix;
    self.leftParenthesisInNewLine.state = [HQUIHelperConfig sharedInstance].newLineLeftParenthesis;
    [self.layoutMethod selectItemAtIndex:[HQUIHelperConfig sharedInstance].layoutLibrary];
}

#pragma mark - # Delegate
//MARK: NSTextFieldDelegate
- (void)controlTextDidEndEditing:(NSNotification *)obj {
    NSTextField *textfield = obj.object;
    if (textfield.tag == 0) {
        [HQUIHelperConfig sharedInstance].projectName = self.projectNameTF.stringValue;
    } else if (textfield.tag == 1) {
        [HQUIHelperConfig sharedInstance].authorName = self.authorNameTF.stringValue;
    } else {
        [HQUIHelperConfig sharedInstance].classPrefix = self.classPrefixTF.stringValue;
    }
}

- (IBAction)codeStyleChanged:(id)sender {
}
- (IBAction)layoutMethodChanged:(id)sender {
}
- (IBAction)resetButtonClick:(id)sender {
}

@end
