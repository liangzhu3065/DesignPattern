//
//  LZSimpleFactory.h
//  DesignPattern
//
//  Created by wlz on 2021/11/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

///工厂产品类型
typedef NS_ENUM(NSUInteger, LZSimpleProductType) {
    LZSimpleProductTypeOne,     ///产品1
    LZSimpleProductTypeTwo,     ///产品2
};

@class LZSimpleProduct;

/** 工厂角色，只有一个工厂*/
@interface LZSimpleFactory : NSObject


/// 创建产品对象
/// @param productType 产品类型
+ (LZSimpleProduct *)createProduct:(LZSimpleProductType )productType;

@end

NS_ASSUME_NONNULL_END
