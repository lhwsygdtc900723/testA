//
//  AViewController.m
//  MainProject
//
//  Created by lihui on 2017/10/13.
//  Copyright © 2017年 lihui. All rights reserved.
//

#import "AViewController.h"

@interface AViewController ()
@property(nonatomic,strong)UIButton *pressBtn;
@end

@implementation AViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.pressBtn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - event response
- (void)didTappedPushBViewControllerButton:(UIButton *)button
{
    NSLog(@"A btn Touch");
//    UIViewController *viewController = [[CTMediator sharedInstance] B_viewControllerWithContentText:@"hello, world!"];
//    [self.navigationController pushViewController:viewController animated:YES];
}

-(UIButton *)pressBtn{
    if (!_pressBtn){
        _pressBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pressBtn setTitle:@"push B view controller" forState:UIControlStateNormal];
        [_pressBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_pressBtn addTarget:self action:@selector(didTappedPushBViewControllerButton:) forControlEvents:UIControlEventTouchUpInside];
        [_pressBtn setFrame:CGRectMake(100, 100, 100, 30)];
    }
    return _pressBtn;
}
@end
