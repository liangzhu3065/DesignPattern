//
//  LZSingletonObj.h
//  SingletonPattern
//
//  Created by wlz on 2021/12/22.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


@interface LZSingletonObj : NSObject

+ (instancetype)shareInstance;

@end

NS_ASSUME_NONNULL_END
