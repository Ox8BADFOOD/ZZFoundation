//
//  NSString+ZZEx.m
//  Kiwi
//
//  Created by Max on 2020/12/28.
//

#import "NSString+ZZEx.h"

@implementation NSString (Ex)


/// 格式化字符串创建
/// @param format 格式化
NSString * ZZString(NSString *format, ...)
{
    va_list ap;
    va_start (ap, format);

    NSString *body = [[NSString alloc] initWithFormat:format arguments:ap];

    va_end (ap);

    return body;
}

-(NSString *)ZZSlice:(NSInteger)star{
    return [self substringFromIndex:star];
};

-(NSString *)ZZSlice:(NSInteger)star end:(NSInteger)end{
    NSRange range = NSMakeRange(star, end);
    return [self substringWithRange:range];
};

-(NSString *)ZZSlice:(NSInteger)star length:(NSInteger)length{
    return [self ZZSlice:star end:star + length];
}

-(NSArray *)ZZSplit:(NSString *)separator{
    return [self componentsSeparatedByString:separator];
};

-(NSString *)ZZReplace:(NSString *)aStr with:(NSString *)bStr{
    NSMutableString *muStr = [self mutableCopy];
    NSArray *ranges = [muStr ZZRangeOfSubString:aStr];
    for (NSValue *value  in ranges) {
        NSRange range = [value rangeValue];
        muStr = [[muStr stringByReplacingCharactersInRange:range withString:bStr] mutableCopy];
    }
    return muStr;
}
@end
