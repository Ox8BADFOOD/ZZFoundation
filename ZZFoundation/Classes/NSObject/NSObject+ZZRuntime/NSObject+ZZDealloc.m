//
//  NSObject+ZZDealloc.m
//  ZZFoundation
//
//  Created by Max on 2021/3/2.
//

#import "NSObject+ZZDealloc.h"
#import <ZZFoundation/ZZSwizzle.h>
@implementation UIViewController (ZZDealloc)
+ (void)load{
    ZZ_best_Swizzle([self class], NSSelectorFromString(@"dealloc"), @selector(myDealloc));
}
//系统调用dealloc方法的时候会调用该方法
- (void)myDealloc{
    NSLog(@"%@ %s", NSStringFromClass([self class]),__func__);
//此刻实际是在调用dealloc方法
    [self myDealloc];
}
@end
