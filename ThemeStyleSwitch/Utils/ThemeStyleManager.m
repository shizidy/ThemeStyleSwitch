//
//  ThemeStyleManager.m
//  ThemeStyleSwitch
//
//  Created by wdyzmx on 2020/2/14.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import "ThemeStyleManager.h"

@implementation ThemeStyleManager

/// 单例
+ (instancetype)shareManager {
    static ThemeStyleManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[ThemeStyleManager alloc] init];
    });
    return manager;
}

/// 初始化themeStyle
- (instancetype)init {
    if (self = [super init]) {
        self.themeStyle = day;
    }
    return self;
}

/// themeStyle的setter方法
/// @param themeStyle 主题类型
- (void)setThemeStyle:(ThemeStyle)themeStyle {
    _themeStyle = themeStyle;
    if (themeStyle == day) {
        self.colorModel.backgroundColor = [UIColor whiteColor];
        self.colorModel.textColor = [UIColor whiteColor];
        self.colorModel.buttonColor = [UIColor blackColor];
    } else {
        self.colorModel.backgroundColor = [UIColor blackColor];
        self.colorModel.textColor = [UIColor blackColor];
        self.colorModel.buttonColor = [UIColor whiteColor];
    }
}

/// 切换主题
/// @param themeStyle 主题style
- (void)switchThemeStyle:(ThemeStyle)themeStyle {
    self.themeStyle = themeStyle;
    //通知切换主题
    [[NSNotificationCenter defaultCenter] postNotificationName:@"SwitchThemeStyle" object:nil];
}

#pragma mark - 懒加载
- (ThemeColorModel *)colorModel {
    if (!_colorModel) {
        _colorModel = [[ThemeColorModel alloc] init];
    }
    return _colorModel;
}

@end
