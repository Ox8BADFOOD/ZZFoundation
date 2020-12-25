//
//  ZZFoundationTests.m
//  ZZFoundationTests
//
//  Created by bymiracles@163.com on 12/24/2020.
//  Copyright (c) 2020 bymiracles@163.com. All rights reserved.
//

// https://github.com/kiwi-bdd/Kiwi

#import <Kiwi/Kiwi.h>
#import "NSString+ZZPath.h"

SPEC_BEGIN(StringTest)

describe(@"file directory", ^{

  context(@"of cache", ^{
      id value = [@"fileName" ZZCacheDir];
      it(@"should be string class", ^{
          [[value should] beKindOfClass:[NSString class]];
      });

      it(@"should has suffix fileName", ^{
          [[value should] containString:@"/Library/Caches/fileName"];
      });
    
  });

  context(@"will pass", ^{
    
      it(@"can do maths", ^{
        [[@1 should] beLessThan:@23];
      });
    
      it(@"can read", ^{
          [[@"team" shouldNot] containString:@"I"];
      });  
  });
  
});

SPEC_END

