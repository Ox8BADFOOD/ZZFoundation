//
//  NSObject+ZZResp.m
//  ZZFoundation
//
//  Created by Max on 2021/2/5.
//

#import "NSObject+ZZResp.h"

@implementation NSObject (ZZResp)
-(NSString *)zz_json_describe{
    NSData *data = [NSJSONSerialization dataWithJSONObject:self options:kNilOptions error:nil];
    NSString *str = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return str;
};
@end
