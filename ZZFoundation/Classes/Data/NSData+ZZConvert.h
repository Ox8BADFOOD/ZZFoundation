//
//  NSData+ZZConvert.h
//  ZZFoundation
//
//  Created by Max on 2021/2/4.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSData (ZZConvert)
/// 转int数组
- (int*)zz_convertToIntArrayWithLength:(NSUInteger*)length;

+ (NSData*)fromIntArray:(int[_Nonnull])intArray length:(int)length;
@end

NS_ASSUME_NONNULL_END
