//
//  NSString+ZZPath.h
//  lock
//
//  Created by bym on 2018/5/2.
//  Copyright © 2018年 BYM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (ZZPath)
- (instancetype)ZZCacheDir;
- (instancetype)ZZDocDir;
- (instancetype)ZZTempDir;
@end
