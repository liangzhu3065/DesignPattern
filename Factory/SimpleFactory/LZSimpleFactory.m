//
//  LZSimpleFactory.m
//  DesignPattern
//
//  Created by wlz on 2021/11/21.
//

#import "LZSimpleFactory.h"
#import "LZSimpleConcreteProductOne.h"
#import "LZSimpleConcreteProductTwo.h"


@implementation LZSimpleFactory

+ (LZSimpleProduct *)createProduct:(LZSimpleProductType )productType {
    
    LZSimpleProduct *product = nil;
    switch (productType) {
        case LZSimpleProductTypeOne:
            product = [[LZSimpleConcreteProductOne alloc] init];
            break;
        case LZSimpleProductTypeTwo:
            product = [[LZSimpleConcreteProductTwo alloc] init];
            break;
    }
    return product;
}

@end
