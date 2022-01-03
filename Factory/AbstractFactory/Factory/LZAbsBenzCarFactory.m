//
//  LZAbsBenzCarFactory.m
//  DesignPattern
//
//  Created by wlz on 2021/11/21.
//

#import "LZAbsBenzCarFactory.h"
#import "LZAbsBenzSuvCarProduct.h"
#import "LZAbsBenzMpvCarProduct.h"

@implementation LZAbsBenzCarFactory

+ (id<LZAbstractSuvProductProtocol>)createSuvCar {
    return [[LZAbsBenzSuvCarProduct alloc] init];
}

+ (id<LZAbstractMpvProductProtocol>)createMpvCar {
    return [[LZAbsBenzMpvCarProduct alloc] init];
}

@end
