//
//  ZZViewController.m
//  ZZFoundation
//
//  Created by bymiracles@163.com on 12/24/2020.
//  Copyright (c) 2020 bymiracles@163.com. All rights reserved.
//

#import "ZZViewController.h"
#import "ZZFoundation_Example-Swift.h"
#import <ZZFoundation/ZZFoundation.h>
#import "TempViewController.h"
@interface ZZViewController ()

@end

@implementation ZZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    TempViewController *vc = [TempViewController new];
    vc.view.backgroundColor = [UIColor redColor];
    [self presentViewController:vc animated:true completion:nil];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
           [vc dismissViewControllerAnimated:true completion:nil];
       });
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
