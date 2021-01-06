//
//  NSString+ZZExTest.m
//  ZZFoundation_Tests
//
//  Created by Max on 2020/12/28.
//  Copyright © 2020 bymiracles@163.com. All rights reserved.
//

#import "Kiwi.h"
#import <ZZFoundation.h>

SPEC_BEGIN(StringEx)
NSString * emptyStr = @"";
NSString * emptyStr2 = @" ";
NSString * emptyStr3 = @"    ";
NSString * emptyStr4 = @"\n";

NSString * chinese = @"你莫走";
NSString * chineseCharacter = @"你好，李银河！";
NSString * num = @"1232131321";

NSString * characterNum = @"Zz1232131321";

describe(@"split", ^{
    it(@"emptyStr should passCheck", ^{
        [[theValue([emptyStr ZZEmpty]) should] beYes];
//        [[theValue([emptyStr1 ZZEmpty]) should] beYes];
        [[theValue([emptyStr2 ZZEmpty]) should] beYes];
        [[theValue([emptyStr3 ZZEmpty]) should] beYes];
        [[theValue([emptyStr4 ZZEmpty]) should] beYes];
    });
    
    it(@"emptyStr should have 1 component", ^{
        [[[emptyStr ZZSplit:@"3"] should] haveCountOf:1];
    });
    it(@"chinese should have 2 component", ^{
        [[[chinese ZZSplit:@"走"] should] haveCountOf:2];
    });
    it(@"chineseCharacter should have 2 component", ^{
        [[[chineseCharacter ZZSplit:@"，"] should] haveCountOf:2];
    });
    it(@"num should have 3 component", ^{
        [[[num ZZSplit:@"3"] should] haveCountOf:4];
    });
});

describe(@"replace", ^{
    it(@"emptyStr search with someone should return itself", ^{
        [[[emptyStr ZZReplace:@"" with:@" "] should] equal:emptyStr];
    });

    it(@"1 in num with $", ^{
        [[[num ZZReplace:@"1" with:@"$"] should] equal:@"$232$3$32$"];
    });
});

SPEC_END
