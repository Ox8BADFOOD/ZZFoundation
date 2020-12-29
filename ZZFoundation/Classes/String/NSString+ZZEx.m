//
//  NSString+Ex.m
//  Kiwi
//
//  Created by Max on 2020/12/28.
//

#import "NSString+Ex.h"

@implementation NSString (Ex)

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

-(NSString *)ZZReplace:(NSString *)replaceStr{
    [self stringByReplacingCharactersInRange:<#(NSRange)#> withString:<#(nonnull NSString *)#>]
}
@end
