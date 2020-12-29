//
//  NSString+ZZSize.h
//  ruibeikang
//
//  Created by Apple on 23/7/19.
//  Copyright © 2019年 Qzz. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (ZZSize)
-(CGFloat (^)(CGFloat width,UIFont *font))ZZHeigh;
-(CGFloat (^)(CGFloat heigh,UIFont *font))ZZWidth;
@end

NS_ASSUME_NONNULL_END
