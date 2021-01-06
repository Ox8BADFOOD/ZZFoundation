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
__block NSDate * yearlastWeek;
__block NSDate * sometoday;

describe(@"week", ^{
    beforeEach(^{
        NSDateFormatter *format = [[NSDateFormatter alloc] init];
        format.dateFormat = @"yyyy-MM-dd Z";
        yearlastWeek = [format dateFromString:@"2020-12-22 +0800"];
        sometoday = [format dateFromString:@"2020-12-30 +0800"];
    });
    
    it(@"this week should be nth of this month", ^{
        [[theValue([sometoday weekOfMonth]) should] equal:theValue(5)];
    });
    
    it(@"this week should be nth of this year", ^{
        //w: 1~53 (0 padded Week of Year, 1st day of week = Sunday, NB: 1st week of year starts from the last Sunday of last year)
        NSLog(@"%zd",[yearlastWeek weekOfYear]);
        [[theValue([yearlastWeek weekOfYear]) should] beGreaterThanOrEqualTo:theValue(51)];
    });
    
    it(@"time should be correct", ^{
        NSDateFormatter *format = [[NSDateFormatter alloc] init];
        [format setDateFormat:@"yyyy-MM-dd HH时"];
//        [[[format stringFromDate:sometoday] should] equal:@"2020-12-30 11时"];
    });
});

SPEC_END
