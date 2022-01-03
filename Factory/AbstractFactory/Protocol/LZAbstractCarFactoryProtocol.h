//
//  LZAbstractCarFactory.h
//  DesignPattern
//
//  Created by wlz on 2021/11/21.
//

#import <Foundation/Foundation.h>
#import "LZAbstractMpvProductProtocol.h"
#import "LZAbstractSuvProductProtocol.h"


NS_ASSUME_NONNULL_BEGIN


@protocol LZAbstractCarFactoryProtocol <NSObject>

@optional
+ (id<LZAbstractSuvProductProtocol>)createSuvCar;

+ (id<LZAbstractMpvProductProtocol>)createMpvCar;

@end

NS_ASSUME_NONNULL_END
 
