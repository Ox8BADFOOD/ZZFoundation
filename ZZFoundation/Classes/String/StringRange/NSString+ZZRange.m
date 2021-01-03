//
//  NSString+ZZRange.m
//  Kiwi
//
//  Created by Max on 2020/12/25.
//

#import "NSString+ZZRange.h"

@implementation NSString (ZZRange)

- (NSArray*)ZZRangeOfSubString:(NSString*)subStr{
    NSMutableArray *rangeArray = [NSMutableArray array];
    NSString*string1 = [self stringByAppendingString:subStr];
    NSString *temp;
    for(int i =0; i < self.length; i ++) {
        temp = [string1 substringWithRange:NSMakeRange(i, subStr.length)];
        if ([temp isEqualToString:subStr]) {
            NSRange range = {i,subStr.length};
            [rangeArray addObject: [NSValue valueWithRange:range]];
        }
    }
    return rangeArray;
}

@end
