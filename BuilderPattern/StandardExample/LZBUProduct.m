//
//  LZBUProduct.m
//  BuilderPattern
//
//  Created by wlz on 2021/12/22.
//

#import "LZBUProduct.h"

@implementation LZBUProduct

- (NSString *)description {
    return [NSString stringWithFormat:@"drink:%@||food:%@||snack:%@",self.drink,self.food,self.snack];
}

@end
