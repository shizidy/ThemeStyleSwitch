//
//  RootViewController.m
//  ThemeStyleSwitch
//
//  Created by wdyzmx on 2020/2/14.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self registNotification];
    [self setUI];
    [self setUIColor];
    self.view.backgroundColor = [ThemeStyleManager shareManager].colorModel.backgroundColor;
    // Do any additional setup after loading the view.
}

#pragma mark - 注册通知
- (void)registNotification {
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(switchThemeStyle:) name:@"SwitchThemeStyle" object:nil];
}

- (void)setUI {}

- (void)setUIColor {}

#pragma mark - 通知回调
- (void)switchThemeStyle:(NSNotification *)noti {
    self.view.backgroundColor = [ThemeStyleManager shareManager].colorModel.backgroundColor;
    [self setUIColor];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
