//
//  ZZDateFormat.h
//  ZZFoundation
//
//  Created by Max on 2021/11/29.
//

#import <Foundation/Foundation.h>

/// 获取日期格式化对象（yyyy-MM-dd）
NSDateFormatter * zz_dateFormat_short_prefix();

/// 获取日期格式化对象（HH:ss）
NSDateFormatter * zz_dateFormat_short_suffix();


/// 获取日期格式化对象 （yyyy-MM-dd HH:mm）
NSDateFormatter * zz_dateFormat_medium();

/// 获取日期格式化对象 （yyyy-MM-dd HH:mm:ss）
NSDateFormatter * zz_dateFormat_long();
