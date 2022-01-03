//
//  LZFactory.h
//  DesignPattern
//
//  Created by wlz on 2021/11/21.
//

#import <Foundation/Foundation.h>
#import "LZProduct.h"

NS_ASSUME_NONNULL_BEGIN

/** 抽象工厂*/
@interface LZFactory : NSObject


/// 创建产品
+ (LZProduct *)createProduct;

@end

NS_ASSUME_NONNULL_END
