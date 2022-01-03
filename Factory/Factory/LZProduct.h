//
//  LZProduct.h
//  DesignPattern
//
//  Created by wlz on 2021/11/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/** 抽象产品*/
@interface LZProduct : NSObject


/// 操作接口
- (void)operation;
@end

NS_ASSUME_NONNULL_END
