//
//  NSDate+ZZTimeStamp.m
//  Kiwi
//
//  Created by Max on 2020/12/30.
//

#import "NSDate+ZZTimeStamp.h"

@implementation NSDate (ZZTimeStamp)

/// 获取当前时间戳
-(NSTimeInterval)ZZTimeStamp{
    NSDate *date = [NSDate date];
    NSTimeInterval stamp = [date timeIntervalSince1970];
    return stamp;
};


/// 时间戳转当前时间
/// @param stamp 时间戳
-(NSDate *)ZZDateFromStamp:(NSTimeInterval)stamp{
    return [NSDate dateWithTimeIntervalSince1970:stamp];
};
@end
