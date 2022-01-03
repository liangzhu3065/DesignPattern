//
//  ViewController.m
//  Factory
//
//  Created by wlz on 2021/12/5.
//

#import "ViewController.h"

#import "LZSimpleProduct.h"
#import "LZSimpleFactory.h"

#import "LZFactory.h"
#import "LZProduct.h"
#import "LZConcreteFactoryOne.h"
#import "LZConcreteProductOne.h"
#import "LZConcreteFactoryTwo.h"
#import "LZConcreteProductTwo.h"

#import "LZAbsAudiCarFactroy.h"
#import "LZAbsBenzCarFactory.h"
#import "LZAbstractSuvProductProtocol.h"
#import "LZAbstractMpvProductProtocol.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LZSimpleProduct *simpleProduct1 = [LZSimpleFactory createProduct:LZSimpleProductTypeOne];
    LZSimpleProduct *simpleProduct2 = [LZSimpleFactory createProduct:LZSimpleProductTypeTwo];
    [simpleProduct1 operation];
    [simpleProduct2 operation];

    
    LZProduct *product = [LZFactory createProduct];
    [product operation];
    LZConcreteProductOne *product1 = (LZConcreteProductOne *)[LZConcreteFactoryOne createProduct];
    [product1 operation];
    LZConcreteProductTwo *product2 = (LZConcreteProductTwo *)[LZConcreteFactoryTwo createProduct];
    [product2 operation];
    
    id<LZAbstractSuvProductProtocol>audiSuv = [LZAbsAudiCarFactroy createSuvCar];
    [audiSuv suvRun];
    id<LZAbstractMpvProductProtocol>audiMpv = [LZAbsAudiCarFactroy createMpvCar];
    [audiMpv mpvRun];
    
    id<LZAbstractSuvProductProtocol>benzSuv = [LZAbsBenzCarFactory createSuvCar];
    [benzSuv suvRun];
    id<LZAbstractMpvProductProtocol>benzMpv = [LZAbsBenzCarFactory createMpvCar];
    [benzMpv mpvRun];
}


@end
