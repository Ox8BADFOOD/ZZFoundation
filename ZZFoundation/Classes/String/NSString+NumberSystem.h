//
//  NSString+NumberSystem.h
//  ZZFoundation
//
//  Created by Max on 2021/11/23.
//  进制转换工具类

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (NumberSystem)
/**
 十进制转换为二进制
  
 @param decimal 十进制数
 @return 二进制数
 */
+ (NSString *)getBinaryByDecimal:(NSInteger)decimal;

/**
 十进制转换十六进制
  
 @param decimal 十进制数
 @return 十六进制数
 */
+ (NSString *)getHexByDecimal:(NSInteger)decimal;

/**
 二进制转换成十六进制
   
 @param binary 二进制数
 @return 十六进制数
 */
+ (NSString *)getHexByBinary:(NSString *)binary;

/**
 十六进制转换为二进制
   
 @param hex 十六进制数
 @return 二进制数
 */
+ (NSString *)getBinaryByHex:(NSString *)hex;

/**
 二进制转换为十进制
  
 @param binary 二进制数
 @return 十进制数
 */
+ (NSString *)getDecimalByBinary:(NSString *)binary;
@end

NS_ASSUME_NONNULL_END
