//
//  NSString+ZZRegex.m
//  InternetHospital
//
//  Created by Max on 2020/12/14.
//  Copyright © 2020 GaoLian. All rights reserved.
//

#import "NSString+ZZRegex.h"

@implementation NSString (ZZRegex)


-(BOOL)zz_validateStr{
    if (!self || self.length <= 0) {
        return NO;
    }
    if ([@"null" isEqualToString:self]
        || [@"\"null\"" isEqualToString:self]) {
        return NO;
    }
    return YES;
}

- (BOOL)zz_validateByRegex:(NSString *)regex {
    NSPredicate *pre = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    return [pre evaluateWithObject:self];
}

-(BOOL)zz_checkAllInt{
    if (self.length == 0)
    return NO;
    NSString *regex = @"^[0-9]+$";
    return [self zz_validateByRegex:regex];
}

/*
 if let t = text {
     let pattern = "^[0-9]+([.]{0,1}[0-9]{0,2}){0,1}$"
     do {
             let regex = try NSRegularExpression(pattern: pattern,options: [])
             let results = regex.matches(in: t, options: [],
                                         range: NSRange(location: 0, length: t.count))
             print(results.count)
             if results.count != 0 {
                 sf.weightField.text =  (t as NSString).substring(with: results[0].range)
                 sf.oldValue = we
             }else{
                 sf.weightField.text = oldValue
             }
         } catch _ {
             print("invalid regex: (error.localizedDescription)")
         }
 }
 */
-(BOOL)zz_checkAllNumberTwoDecimalPlaces{
    if (self.length == 0)
    return NO;
    NSString *regex = @"^([0-9]+([.]{0,1}[0-9]{0,2}){0,1})?$";
    return [self zz_validateByRegex:regex];
}

-(BOOL)zz_checkAllNumber{
    if (self.length == 0)
    return NO;
    NSString *regex = @"^[0-9]+([.]{0,1}[0-9]+){0,1}$";
    return [self zz_validateByRegex:regex];
}

-(BOOL)zz_checkAllNumberContainNegative{
    if (self.length == 0)
    return NO;
    NSString *regex = @"^[-]{0,1}[0-9]+([.]{0,1}[0-9]+){0,1}$";
    return [self zz_validateByRegex:regex];
}

//是否是中文
- (BOOL)zz_checkAllChinese {
    NSString *chineseRegex = @"^[\\u4e00-\\u9fa5]+$";
    return [self zz_validateByRegex:chineseRegex];
}

- (BOOL)zz_checkAllEnglish{
//    NSAssert(false, @"没有实现");
    return false;
};

- (BOOL)zz_checkContainEnglish {
    //长度为6到20位,包含字母、数字、不能为中文
    NSString *regex2 = @"^?=.*[A-Za-z]$";
    return [self zz_validateByRegex:regex2];
}

// 是否英文大写
- (BOOL)zz_checkCapitalLetter{
    NSString *regex = @"^[A-Z]+$";
    return [self zz_validateByRegex:regex];
};

// 是否英文小写
- (BOOL)zz_checkSmallLetter{
    NSString *regex = @"^[a-z]+$";
    return [self zz_validateByRegex:regex];
};

//有效的密码
- (BOOL)zz_checkValidPassword {
    //长度为6到20位,包含字母、数字、不能为中文
    NSString *regex2 = @"^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$";
    return [self zz_validateByRegex:regex2];
    /**
     (?![0-9]+$) 预测该位置后面不全是数字
     (?![a-zA-Z]+$) 预测该位置后面不全是字母
     [0-9A-Za-z] {6,20} 由8-16位数字或这字母组成
     $ 匹配行尾位置
    */
}

- (BOOL)zz_checkAllSpace {
    NSString *regex = @"^[ ]+$";
    return [self zz_validateByRegex:regex];
}

- (BOOL)zz_checkContainSpace{
    return [self containsString:@" "];
}

-(BOOL)zz_checkUrl{
    NSString *urlRegex = @"(https|http|ftp|rtsp|igmp|file|rtspt|rtspu)://((((25[0-5]|2[0-4]\\d|1?\\d?\\d)\\.){3}(25[0-5]|2[0-4]\\d|1?\\d?\\d))|([0-9a-z_!~*'()-]*\\.?))([0-9a-z][0-9a-z-]{0,61})?[0-9a-z]\\.([a-z]{2,6})(:[0-9]{1,4})?([a-zA-Z/?_=]*)\\.\\w{1,5}";
    return [self zz_validateByRegex:urlRegex];
}

/**
 有效的人名 姓名校验规则(最多5个汉字)
 */
- (BOOL)zz_checkPersonName{
    NSString *personName = @"^[\u4e00-\u9fa5_a-zA-Z0-9]{2,5}$";
    return [self zz_validateByRegex:personName];
}

//昵称 长度2-10
- (BOOL)zz_checkNickName {
    NSString *nicRegex = @"^[\u4e00-\u9fa5_a-zA-Z0-9]{2,10}$";
    return [self zz_validateByRegex:nicRegex];
}

// 单位名称校验规则(20个汉字)
- (BOOL)zz_checkCompanyName{
    NSString *companyName = @"^[\u4e00-\u9fa5_a-zA-Z0-9]{2,20}$";
    return [self zz_validateByRegex:companyName];
}

//是不是电话号码
- (BOOL)zz_checkPhoneNumber{
    NSString *regex = @"^(1[3-9][0-9])\\d{8}$";
    return [self zz_validateByRegex:regex];
};

//验证码
- (BOOL)zz_checkVerifyCode:(int)length{
    NSString *regex = [NSString stringWithFormat:@"^[0-9]{%d}",length];
    return [self zz_validateByRegex:regex];
}

-(BOOL)zz_checkIDCardNumber:(NSString *)value{
    value = [value stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSInteger length =0;
    if (!value) {
        return NO;
    }else {
        length = value.length;
        //不满足15位和18位，即身份证错误
        if (length !=15 && length !=18) {
            return NO;
        }
    }
    // 省份代码
    NSArray *areasArray = @[@"11",@"12", @"13",@"14", @"15",@"21", @"22",@"23", @"31",@"32", @"33",@"34", @"35",@"36", @"37",@"41", @"42",@"43", @"44",@"45", @"46",@"50", @"51",@"52", @"53",@"54", @"61",@"62", @"63",@"64", @"65",@"71", @"81",@"82", @"91"];
    
    // 检测省份身份行政区代码
    NSString *valueStart2 = [value substringToIndex:2];
    BOOL areaFlag =NO; //标识省份代码是否正确
    for (NSString *areaCode in areasArray) {
        if ([areaCode isEqualToString:valueStart2]) {
            areaFlag =YES;
            break;
        }
    }
    
    if (!areaFlag) {
        return NO;
    }
    NSRegularExpression *regularExpression;
    NSUInteger numberofMatch;
    
    int year =0;
    //分为15位、18位身份证进行校验
    switch (length) {
        case 15:
        //获取年份对应的数字
        year = [value substringWithRange:NSMakeRange(6,2)].intValue +1900;
        if (year %4 ==0 || (year %100 ==0 && year %4 ==0)) {
    //创建正则表达式 NSRegularExpressionCaseInsensitive：不区分字母大小写的模式
        regularExpression = [[NSRegularExpression alloc]initWithPattern:@"^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}$" options:NSRegularExpressionCaseInsensitive error:nil];//测试出生日期的合法性
    }else {
        //测试    出生日期的合法性
        regularExpression = [[NSRegularExpression     alloc]initWithPattern:@"^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|    08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}$"
            options:NSRegularExpressionCaseInsensitive error:nil];
    }
    //使用正则表达式匹配字符串 NSMatchingReportProgress:找到最长的匹配字符串后调用block回调
    numberofMatch = [regularExpression numberOfMatchesInString:value
   options:NSMatchingReportProgress range:NSMakeRange(0, value.length)];
    if(numberofMatch >0) {
        return YES;
    }else {
        return NO;
    }
    case 18:
    year = [value substringWithRange:NSMakeRange(6,4)].intValue;
    if (year %4 ==0 || (year %100 ==0 && year %4 ==0)) {
        regularExpression = [[NSRegularExpression alloc]initWithPattern:@"^((1[1-5])|(2[1-3])|(3[1-7])|(4[1-6])|(5[0-4])|(6[1-5])|71|(8[12])|91)\\d{4}(((19|20)\\d{2}(0[13-9]|1[012])(0[1-9]|[12]\\d|30))|((19|20)\\d{2}(0[13578]|1[02])31)|((19|20)\\d{2}02(0[1-9]|1\\d|2[0-8]))|((19|20)([13579][26]|[2468][048]|0[048])0229))\\d{3}(\\d|X|x)?$" options:NSRegularExpressionCaseInsensitive error:nil];//测试出生日期的合法性
    }else {
        regularExpression = [[NSRegularExpression alloc]initWithPattern:@"^((1[1-5])|(2[1-3])|(3[1-7])|(4[1-6])|(5[0-4])|(6[1-5])|71|(8[12])|91)\\d{4}(((19|20)\\d{2}(0[13-9]|1[012])(0[1-9]|[12]\\d|30))|((19|20)\\d{2}(0[13578]|1[02])31)|((19|20)\\d{2}02(0[1-9]|1\\d|2[0-8]))|((19|20)([13579][26]|[2468][048]|0[048])0229))\\d{3}(\\d|X|x)?$" options:NSRegularExpressionCaseInsensitive error:nil];//测试出生日期的合法性
    }
    numberofMatch = [regularExpression numberOfMatchesInString:value options:NSMatchingReportProgress range:NSMakeRange(0, value.length)];
            
    if(numberofMatch >0) {
        //1：校验码的计算方法 身份证号码17位数分别乘以不同的系数。从第一位到第十七位的系数分别为：7－9－10－5－8－4－2－1－6－3－7－9－10－5－8－4－2。将这17位数字和系数相乘的结果相加.
    int S = [value substringWithRange:NSMakeRange(0,1)].intValue*7 + [value substringWithRange:NSMakeRange(10,1)].intValue *7 + [value substringWithRange:NSMakeRange(1,1)].intValue*9 + [value substringWithRange:NSMakeRange(11,1)].intValue *9 + [value substringWithRange:NSMakeRange(2,1)].intValue*10 + [value substringWithRange:NSMakeRange(12,1)].intValue *10 + [value substringWithRange:NSMakeRange(3,1)].intValue*5 + [value substringWithRange:NSMakeRange(13,1)].intValue *5 + [value substringWithRange:NSMakeRange(4,1)].intValue*8 + [value substringWithRange:NSMakeRange(14,1)].intValue *8 + [value substringWithRange:NSMakeRange(5,1)].intValue*4 + [value substringWithRange:NSMakeRange(15,1)].intValue *4 + [value substringWithRange:NSMakeRange(6,1)].intValue*2 + [value substringWithRange:NSMakeRange(16,1)].intValue *2 + [value substringWithRange:NSMakeRange(7,1)].intValue *1 + [value substringWithRange:NSMakeRange(8,1)].intValue *6 + [value substringWithRange:NSMakeRange(9,1)].intValue *3;
    
    //2：用加出来和除以11，看余数是多少？余数只可能有0－1－2－3－4－5－6－7－8－9－10这11个数字
    int Y = S %11;
    NSString *M =@"F";
    NSString *JYM =@"10X98765432";
    M = [JYM substringWithRange:NSMakeRange(Y,1)];// 3：获取校验位
        
    NSString *lastStr = [value substringWithRange:NSMakeRange(17,1)];
    
    NSLog(@"%@",M);
    NSLog(@"%@",[value substringWithRange:NSMakeRange(17,1)]);
    //4：检测ID的校验位
        if ([lastStr isEqualToString:@"x"]) {
            if ([M isEqualToString:@"X"]) {
                return YES;
            }else{
                return NO;
            }
        }else{
            if ([M isEqualToString:[value substringWithRange:NSMakeRange(17,1)]]) {
                    return YES;
            }else {
                return NO;
            }
        }
    }else {
        return NO;
    }
    default:
        return NO;
    }
}

//邮政编码
- (BOOL)zz_checkZipcode{
    NSString *regex = @"^[0-9]{6}";
    return [self zz_validateByRegex:regex];
};
@end
