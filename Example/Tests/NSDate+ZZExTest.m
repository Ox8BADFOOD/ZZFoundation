//
//  NSDate+ZZExTest.m
//  ZZFoundation_Tests
//
//  Created by Max on 2020/12/29.
//  Copyright © 2020 bymiracles@163.com. All rights reserved.
//

#import "Kiwi.h"
#import <ZZFoundation.h>

SPEC_BEGIN(DateEx)
NSDate * today = [NSDate date];
NSDate * timeZoneCurrent = [[NSDate date] addTimeZone];

describe(@"week", ^{
    it(@"today should ", ^{
        [[theValue([today weekOfMonth]) should] equal:theValue(5)];
    });
    it(@"time should be correct", ^{
        NSDateFormatter *format = [[NSDateFormatter alloc] init];
        [format setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
        NSString * str = [today stringWithDateStyle:NSDateFormatterFullStyle timeStyle:NSDateFormatterFullStyle];
        NSString * str1 = [format stringFromDate:timeZoneCurrent];
        NSLog(@"time now is:%@",str);
        NSLog(@"timeZoneCurrent now is:%@",str1);
    });
});

SPEC_END
