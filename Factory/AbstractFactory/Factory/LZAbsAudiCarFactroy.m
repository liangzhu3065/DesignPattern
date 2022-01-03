//
//  LZAbsAudiCarFactroy.m
//  DesignPattern
//
//  Created by wlz on 2021/11/21.
//

#import "LZAbsAudiCarFactroy.h"
#import "LZAbsAudiMpvCarProduct.h"
#import "LZAbsAudiSuvCarProduct.h"

@implementation LZAbsAudiCarFactroy

+ (id<LZAbstractSuvProductProtocol>)createSuvCar {
    return [[LZAbsAudiSuvCarProduct alloc] init];
}

+ (id<LZAbstractMpvProductProtocol>)createMpvCar {
    return [[LZAbsAudiMpvCarProduct alloc] init];
}

@end
