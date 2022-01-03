//
//  LZBUKFCMealsBuilder.h
//  BuilderPattern
//
//  Created by wlz on 2021/12/22.
//

#import <Foundation/Foundation.h>
#import "LZBUProduct.h"
#import "LZBUBuilderProtocol.h"

NS_ASSUME_NONNULL_BEGIN

///建造者，负责创建product对象
@interface LZBUKFCMealsBuilder : NSObject <LZBUBuilderProtocol>

@end

NS_ASSUME_NONNULL_END
