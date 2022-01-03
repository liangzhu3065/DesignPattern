//
//  LZBUKFCMealsBuilder.m
//  BuilderPattern
//
//  Created by wlz on 2021/12/22.
//

#import "LZBUKFCMealsBuilder.h"

@interface LZBUKFCMealsBuilder ()

@property (nonatomic, strong) LZBUProduct *product;

@end

@implementation LZBUKFCMealsBuilder

- (instancetype)init {
    self = [super init];
    if (self) {
        _product = [[LZBUProduct alloc] init];
    }
    return self;
}

- (id<LZBUBuilderProtocol>)buildDrink:(NSString *)drink {
    _product.drink = drink;
    return self;
}

- (id<LZBUBuilderProtocol>)buildFood:(NSString *)food {
    _product.food = food;
    return self;
}

- (id<LZBUBuilderProtocol>)buildSnack:(NSString *)snack {
    _product.snack = snack;
    return self;
}

- (LZBUProduct *)getResult {
    return _product;
}

@end
