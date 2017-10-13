//
//  Target_testA.m
//  testA
//
//  Created by lihui on 2017/10/13.
//  Copyright © 2017年 lihui. All rights reserved.
//

#import "Target_testA.h"
#import "AViewController.h"
@implementation Target_testA
- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    AViewController *viewController = [[AViewController alloc] init];
    return viewController;
}
@end
