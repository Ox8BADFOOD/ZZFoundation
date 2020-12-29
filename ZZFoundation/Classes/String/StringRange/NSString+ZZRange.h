//
//  NSString+ZZRange.h
//  Kiwi
//
//  Created by Max on 2020/12/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (ZZRange)
/// 遍历字符串返回子字符串range的数组集合
- (NSArray*)ZZRangeOfSubString:(NSString*)subStr;
@end

NS_ASSUME_NONNULL_END
