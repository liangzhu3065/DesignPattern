//
//  LZBUBuilderProtocol.h
//  BuilderPattern
//
//  Created by wlz on 2021/12/22.
//

#import <Foundation/Foundation.h>
#import "LZBUProduct.h"

NS_ASSUME_NONNULL_BEGIN

@protocol LZBUBuilderProtocol <NSObject>

- (id<LZBUBuilderProtocol>)buildDrink:(NSString *)drink;

- (id<LZBUBuilderProtocol>)buildFood:(NSString *)food;

- (id<LZBUBuilderProtocol>)buildSnack:(NSString *)snack;

- (LZBUProduct *)getResult;

@end

NS_ASSUME_NONNULL_END
