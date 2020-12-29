//
//  NSString+ZZPath.h
//  lock
//
//  Created by ZZBB on 2018/5/2.
//  Copyright © 2018年 BYM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ZZPath)

/// 拼接成cache目录
- (instancetype)ZZCacheDir;

/// 拼接成Document目录
- (instancetype)ZZDocDir;

/// 拼接成Temp目录
- (instancetype)ZZTempDir;
@end
