//
//  LZAPNBLogTool.m
//  AdapterPattern
//
//  Created by wlz on 2021/12/25.
//

#import "LZAPNBLogTool.h"

@implementation LZAPNBLogTool

+ (void)ddlog:(int)priority message:(NSString *)message {
    NSLog(@"ddlog message:%@",message);
}

@end
