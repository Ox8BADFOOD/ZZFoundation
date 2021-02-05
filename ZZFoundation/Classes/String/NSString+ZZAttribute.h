//
//  NSString+ZZAttribute.h
//  InternetHospital
//
//  Created by Max on 2020/11/16.
//  Copyright © 2020 GaoLian. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (ZZAttribute)
-(NSMutableAttributedString *)zz_stretchingWidth:(CGFloat)width font:(UIFont *)font range:(NSRange)range;
@end

NS_ASSUME_NONNULL_END
