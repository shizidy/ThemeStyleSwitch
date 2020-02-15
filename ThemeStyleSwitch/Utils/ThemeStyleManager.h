//
//  ThemeStyleManager.h
//  ThemeStyleSwitch
//
//  Created by wdyzmx on 2020/2/14.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "ThemeColorModel.h"

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    day,  //日间模式
    night,//黑夜模式
} ThemeStyle;

@interface ThemeStyleManager : NSObject

/// 主题管理类单例
+ (instancetype)shareManager;

/// 主题类型
@property (nonatomic, assign) ThemeStyle themeStyle;
/// 主题颜色数据model
@property (nonatomic, strong) ThemeColorModel *colorModel;

/// 切换主题
/// @param themeStyle 主题类型
- (void)switchThemeStyle:(ThemeStyle)themeStyle;

@end

NS_ASSUME_NONNULL_END
