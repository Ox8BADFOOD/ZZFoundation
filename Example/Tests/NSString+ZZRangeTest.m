//
//  NSString+ZZRangeTest.m
//  ZZFoundation_Tests
//
//  Created by Max on 2020/12/25.
//  Copyright © 2020 bymiracles@163.com. All rights reserved.
//

#import "Kiwi.h"
#import <ZZFoundation.h>

SPEC_BEGIN(StringRange)

describe(@"range", ^{
    __block id value = nil;
    beforeEach(^{
        value = [@"~_~../~_0kdahj1hyqhjdanslkdhaojkshdojk_~" ZZRangeOfSubString:@"~_"];
    });
    afterEach(^{
        value = nil;
    });
    it(@"should have 2 element", ^{
        NSLog(@"%@",value);
        [[value should] haveCountOf:2];
    });
});

SPEC_END
