//
//  LZBUDirector.m
//  BuilderPattern
//
//  Created by wlz on 2021/12/22.
//

#import "LZBUDirector.h"

@implementation LZBUDirector

- (LZBUProduct *)constructBreakfast:(id<LZBUBuilderProtocol>)builder {
    [builder buildFood:@"油条"];
    [builder buildDrink:@"豆浆"];
    [builder buildSnack:@""];
    return [builder getResult];
}

- (LZBUProduct *)constructLunch:(id<LZBUBuilderProtocol>)builder {
    [builder buildFood:@"汉堡"];
    [builder buildDrink:@"可乐"];
    [builder buildSnack:@"薯条"];
    return [builder getResult];
}

@end
