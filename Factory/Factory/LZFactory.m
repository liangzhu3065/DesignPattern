//
//  LZFactory.m
//  DesignPattern
//
//  Created by wlz on 2021/11/21.
//

#import "LZFactory.h"

@implementation LZFactory

+ (LZProduct *)createProduct {
    LZProduct *product = [[LZProduct alloc] init];
    return product;
}

@end
