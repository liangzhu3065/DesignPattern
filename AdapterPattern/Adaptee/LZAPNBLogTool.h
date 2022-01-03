//
//  LZAPNBLogTool.h
//  AdapterPattern
//
//  Created by wlz on 2021/12/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/** 开源的工具库*/
@interface LZAPNBLogTool : NSObject

+ (void)ddlog:(int)priority message:(NSString *)message;

@end

NS_ASSUME_NONNULL_END
