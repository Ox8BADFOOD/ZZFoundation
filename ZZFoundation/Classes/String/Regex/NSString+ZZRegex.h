//
//  NSString+ZZRegex.h
//  InternetHospital
//
//  Created by Max on 2020/12/14.
//  Copyright © 2020 GaoLian. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (ZZRegex)


/// 是否是有效的字符串 @"null"无效
-(BOOL)zz_validateStr;

/// 正整数
-(BOOL)zz_checkAllInt;

/// 小数点后两位
-(BOOL)zz_checkAllNumberTwoDecimalPlaces;
/// 是不是阿拉伯数字或小数点
-(BOOL)zz_checkAllNumber;
/// 是不是阿拉伯数字或小数点(包含负数)
-(BOOL)zz_checkAllNumberContainNegative;

/// 是否是中文
- (BOOL)zz_checkAllChinese;

/// 是否全英文
- (BOOL)zz_checkAllEnglish;

/// 是否包含英文
- (BOOL)zz_checkContainEnglish;


/// 是否英文大写
- (BOOL)zz_checkCapitalLetter;

/// 是否英文小写
- (BOOL)zz_checkSmallLetter;

/// 有效的密码 长度为6到20位,包含字母、数字、不能为中文
- (BOOL)zz_checkValidPassword;

/// 是不是全为空格
- (BOOL)zz_checkAllSpace;
/// 包含一个以上空格
- (BOOL)zz_checkContainSpace;
/// 是不是url
-(BOOL)zz_checkUrl;

/// 有效的人名 姓名校验规则(最多5个汉字)
- (BOOL)zz_checkPersonName;

/// 昵称 长度2-10
- (BOOL)zz_checkNickName;
/// 是不是电话号码
- (BOOL)zz_checkPhoneNumber;


///  单位名称校验规则(20个汉字)
- (BOOL)zz_checkCompanyName;
/// 验证码
- (BOOL)zz_checkVerifyCode:(int)length;

/// 身份证
-(BOOL)zz_checkIDCardNumber:(NSString *)value;

/// 邮政编码
- (BOOL)zz_checkZipcode;


@end

NS_ASSUME_NONNULL_END
