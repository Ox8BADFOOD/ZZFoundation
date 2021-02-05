//
//  NSData+ZZConvert.m
//  ZZFoundation
//
//  Created by Max on 2021/2/4.
//

#import "NSData+ZZConvert.h"

@implementation NSData (ZZConvert)

#pragma mark nsdata转int数组
- (int*)zz_convertToIntArrayWithLength:(NSUInteger*)length
{
    if (!self) {
        return NULL;
    }
    NSUInteger dataLen = self.length;
    int* dataArray = (int*) malloc(dataLen * sizeof(int));
    SignedByte* bytes = (SignedByte*) self.bytes;
    for (int i = 0; i < dataLen; i++) {
        dataArray[i] = (0xFF & bytes[i]);
    }
    *length = dataLen;
    return dataArray;
}

#pragma mark int数组转nsdata
+ (NSData*)fromIntArray:(int[])intArray length:(int)length
{
    if (intArray == NULL) {
        return nil;
    }
    SignedByte* bytes = (SignedByte*) malloc(length * sizeof(SignedByte));
    for (int i = 0; i < length; i++) {
        bytes[i] = (SignedByte) intArray[i];
    }
    NSData* data = [[NSData alloc] initWithBytes:bytes length:length];
    free(bytes);
    return data;
}
@end
