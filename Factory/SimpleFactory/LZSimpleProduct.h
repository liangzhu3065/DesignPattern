//
//  LZSimpleConcreteProduct.h
//  DesignPattern
//
//  Created by wlz on 2021/11/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/** 抽象产品*/
@interface LZSimpleProduct : NSObject


/// 产品功能接口，由子类重写实现
- (void)operation;

@end

NS_ASSUME_NONNULL_END
