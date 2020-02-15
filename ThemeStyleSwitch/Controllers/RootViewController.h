//
//  RootViewController.h
//  ThemeStyleSwitch
//
//  Created by wdyzmx on 2020/2/14.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ThemeStyleManager.h"
NS_ASSUME_NONNULL_BEGIN

@interface RootViewController : UIViewController

/// 创建UI
- (void)setUI;

/// 设置各UI颜色
- (void)setUIColor;

@end

NS_ASSUME_NONNULL_END
