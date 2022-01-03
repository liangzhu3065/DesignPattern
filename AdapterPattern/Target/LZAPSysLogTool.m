//
//  LZAPSysLogTool.m
//  AdapterPattern
//
//  Created by wlz on 2021/12/25.
//

#import "LZAPSysLogTool.h"

@implementation LZAPSysLogTool

+ (void)debugWithTag:(NSString *)tag message:(NSString *)message {
    NSLog(@"debug message:%@",message);
}

@end
