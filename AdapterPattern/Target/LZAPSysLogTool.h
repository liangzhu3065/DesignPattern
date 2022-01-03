//
//  LZAPSysLogTool.h
//  AdapterPattern
//
//  Created by wlz on 2021/12/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/** 系统自带的log工具库*/
@interface LZAPSysLogTool : NSObject

+ (void)debugWithTag:(NSString *)tag message:(NSString *)message;

@end

NS_ASSUME_NONNULL_END
