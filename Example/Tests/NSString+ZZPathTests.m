//
//  ZZFoundationTests.m
//  ZZFoundationTests
//
//  Created by bymiracles@163.com on 12/24/2020.
//  Copyright (c) 2020 bymiracles@163.com. All rights reserved.
//

// https://github.com/kiwi-bdd/Kiwi

#import <Kiwi/Kiwi.h>
#import <ZZFoundation.h>

SPEC_BEGIN(StringPath)

describe(@"StringEx", ^{

  context(@"of cache", ^{
      __block id value = nil;
      beforeEach(^{
          value = [@"fileName" ZZDirCache];
      });
      
      afterEach(^{
          value = nil;
      });
      
      it(@"should not ne nil", ^{
          [[value shouldNot] beNil];
      });

      it(@"should contain \"fileName\"", ^{
          [[[value lastPathComponent]should] equal:@"fileName"];
      });
      
      
    
  });
  
});

SPEC_END

