//
//  ZZDateFormat.m
//  ZZFoundation
//
//  Created by Max on 2021/11/29.
//

#import "ZZDateFormat.h"

/// 获取日期格式化对象（yyyy-MM-dd）
NSDateFormatter * zz_dateFormat_short_prefix(){
    NSDateFormatter * f = [NSDateFormatter new];
    f.dateFormat = @"yyyy-MM-dd";
    return f;
}

/// 获取日期格式化对象（HH:mm）
NSDateFormatter * zz_dateFormat_short_suffix(){
    NSDateFormatter * f = [NSDateFormatter new];
    f.dateFormat = @"HH:mm";
    return f;
}


/// 获取日期格式化对象 （yyyy-MM-dd HH:mm）
NSDateFormatter * zz_dateFormat_medium(){
    NSDateFormatter * f = [NSDateFormatter new];
    f.dateFormat = @"yyyy-MM-dd HH:mm";
    return f;
};

/// 获取日期格式化对象 （yyyy-MM-dd HH:mm:ss）
NSDateFormatter * zz_dateFormat_long(){
    NSDateFormatter * f = [NSDateFormatter new];
    f.dateFormat = @"yyyy-MM-dd HH:mm:ss";
    return f;
};
