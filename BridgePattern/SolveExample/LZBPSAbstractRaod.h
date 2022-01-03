//
//  LZBPSAbstractRaod.h
//  BridgePattern
//
//  Created by wlz on 2021/12/26.
//

#import <Foundation/Foundation.h>
#import "LZBPSAbstractCar.h"

NS_ASSUME_NONNULL_BEGIN

@interface LZBPSAbstractRaod : NSObject

//抽象的依赖关系
@property (nonatomic, strong) LZBPSAbstractCar *car;

- (void)run;

@end

NS_ASSUME_NONNULL_END
