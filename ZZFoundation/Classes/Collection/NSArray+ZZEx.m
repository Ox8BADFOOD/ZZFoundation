//
//  NSArray+ZZEx.m
//  RuiBeiKang
//
//  Created by Apple on 3/7/19.
//  Copyright © 2019年 JW. All rights reserved.
//

#import "NSArray+ZZEx.h"

@implementation NSArray (ZZEx)
-(BOOL)ZZEmpty{
    return self.count == 0;
};

//连接两个或更多的数组，并返回结果。
-(NSArray *)ZZConact:(NSArray *)arr{
    NSMutableArray *tempArr = [NSMutableArray arrayWithArray:self];
    [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [tempArr addObject:obj];
    }];
    return [tempArr copy];
};



-(NSString *)ZZJoin:(NSString *)separate{
    NSMutableString *str = [@"" mutableCopy];
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
            if ([obj isKindOfClass:[NSString class]]) {
                [str appendString:obj];
                if (idx != self.count - 1) {[str appendString:separate];};
            }else if ([obj isKindOfClass:[NSNumber class]]) {
                [str appendString:[obj stringValue]];
                if (idx != self.count - 1) {[str appendString:separate];};
            }else  if ([obj isKindOfClass:[NSObject class]]) {
                [str appendString:[obj description]];
                if (idx != self.count - 1) {[str appendString:separate];};
            }else  if ([obj isKindOfClass:[NSValue class]]){
                NSAssert(false, @"no implement");
            }
    }];
    return str;
};

-(NSArray *)ZZReverse{
    NSMutableArray *arr = [NSMutableArray array];
    [self enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [arr addObject:obj];
    }];
    return arr;
};



-(NSArray *)ZZMap:(id(^)(id))map{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [array addObject:map(obj)];
    }];
    return array;
};

-(NSArray*)ZZFilter:(BOOL(^)(id))filter{
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (filter(obj)) {
            [array addObject:obj];
        }
    }];
    return array;
};
@end
