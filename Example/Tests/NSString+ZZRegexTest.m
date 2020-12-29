//
//  NSString+ZZRegex.m
//  ZZFoundation_Tests
//
//  Created by Max on 2020/12/25.
//  Copyright © 2020 bymiracles@163.com. All rights reserved.
//

#import "Kiwi.h"
#import <ZZFoundation.h>

SPEC_BEGIN(StringRegex)
NSString * chinese = @"你莫走";
NSString * chineseCharacter = @"你好，李银河！";
NSString * num = @"1232131321";
NSString * characterNum = @"Zz1232131321";

describe(@"Chinese regex", ^{
    it(@"chineseStr should be all Chinese", ^{
        [[theValue([chinese ZZCheckAllChinese]) should] beTrue];
    });
    
    it(@"chineseCharacterStr should not be all Chinese", ^{
        [[theValue([chineseCharacter ZZCheckAllChinese]) should] beFalse];
    });
    
    it(@"characterNum should not be all Chinese", ^{
        [[theValue([characterNum ZZCheckAllChinese]) should] beFalse];
    });
});

SPEC_END
