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
@interface ZZViewController ()

@end

@implementation ZZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%@",zz_getObjClass([ZZSwiftClass new]));
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
