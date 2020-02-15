//
//  ThemeColorModel.h
//  ThemeStyleSwitch
//
//  Created by wdyzmx on 2020/2/14.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ThemeColorModel : NSObject

/// 背景颜色
@property (nonatomic, strong) UIColor *backgroundColor;
/// button背景颜色
@property (nonatomic, strong) UIColor *buttonColor;
/// 文本颜色
@property (nonatomic, strong) UIColor *textColor;

@end

NS_ASSUME_NONNULL_END
