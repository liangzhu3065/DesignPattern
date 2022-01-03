//
//  LZConcreteFactoryTwo.m
//  DesignPattern
//
//  Created by wlz on 2021/11/21.
//

#import "LZConcreteFactoryTwo.h"
#import "LZConcreteProductTwo.h"

@implementation LZConcreteFactoryTwo

+ (LZProduct *)createProduct {
    LZConcreteProductTwo *product = [[LZConcreteProductTwo alloc] init];
    return product;
}

@end
