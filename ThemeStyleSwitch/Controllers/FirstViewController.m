//
//  FirstViewController.m
//  ThemeStyleSwitch
//
//  Created by wdyzmx on 2020/2/14.
//  Copyright © 2020 wdyzmx. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) UIButton *button2;

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setUI {
    self.button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
    self.button2 = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
    [self.view addSubview:self.button];
    [self.view addSubview:self.button2];
    [self.button setTitle:@"切换主题" forState:UIControlStateNormal];
    [self.button2 setTitle:@"下一页" forState:UIControlStateNormal];
    [self.button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.button2 addTarget:self action:@selector(buttonAction2:) forControlEvents:UIControlEventTouchUpInside];
    CGPoint point = self.view.center;
    CGPoint point2 = self.view.center;
    point.y = point.y - 50;
    self.button.center = point;
    point2.y = point2.y + 50;
    self.button2.center = point2;
}

- (void)setUIColor {
    self.view.backgroundColor = [ThemeStyleManager shareManager].colorModel.backgroundColor;
    self.button.backgroundColor = [ThemeStyleManager shareManager].colorModel.buttonColor;
    self.button2.backgroundColor = [ThemeStyleManager shareManager].colorModel.buttonColor;
    [self.button setTitleColor:[ThemeStyleManager shareManager].colorModel.textColor forState:UIControlStateNormal];
    [self.button2 setTitleColor:[ThemeStyleManager shareManager].colorModel.textColor forState:UIControlStateNormal];
}

#pragma mark - button点击事件
- (void)buttonAction:(UIButton *)btn {
    if ([ThemeStyleManager shareManager].themeStyle == day) {
        [[ThemeStyleManager shareManager] switchThemeStyle:night];
    } else {
        [[ThemeStyleManager shareManager] switchThemeStyle:day];
    }
    
}
- (void)buttonAction2:(UIButton *)btn {
    SecondViewController *viewController = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:viewController animated:YES];
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
