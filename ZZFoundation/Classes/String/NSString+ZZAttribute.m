//
//  NSString+ZZAttribute.m
//  InternetHospital
//
//  Created by Max on 2020/11/16.
//  Copyright © 2020 GaoLian. All rights reserved.
//

#import "NSString+ZZAttribute.h"

@implementation NSString (ZZAttribute)
-(NSMutableAttributedString *)zz_stretchingWidth:(CGFloat)width font:(UIFont *)font range:(NSRange)range{
    CGSize textSize = [self boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingTruncatesLastVisibleLine| NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:font} context:nil].size;

   CGFloat margin = (width - textSize.width)/(self.length - 1);
   NSNumber *number = @(margin);
   NSMutableAttributedString *attribute = [[NSMutableAttributedString alloc] initWithString:self];
   
   [attribute addAttribute: NSKernAttributeName value:number range:range];
    return attribute;
}
@end
