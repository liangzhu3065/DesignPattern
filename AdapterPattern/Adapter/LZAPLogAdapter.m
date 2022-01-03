//
//  LZAPLogAdapter.m
//  AdapterPattern
//
//  Created by wlz on 2021/12/25.
//

#import "LZAPLogAdapter.h"
#import "LZAPNBLogTool.h"

@implementation LZAPLogAdapter

+ (void)debugWithTag:(NSString *)tag message:(NSString *)message {
    [LZAPNBLogTool ddlog:1 message:message];
}

@end
