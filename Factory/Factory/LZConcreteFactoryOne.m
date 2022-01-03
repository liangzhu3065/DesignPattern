//
//  LZConcreteFactoryOne.m
//  DesignPattern
//
//  Created by wlz on 2021/11/21.
//

#import "LZConcreteFactoryOne.h"
#import "LZConcreteProductOne.h"

@implementation LZConcreteFactoryOne

+ (LZProduct *)createProduct {
    LZConcreteProductOne *product = [[LZConcreteProductOne alloc] init];
    return product;
}

@end
