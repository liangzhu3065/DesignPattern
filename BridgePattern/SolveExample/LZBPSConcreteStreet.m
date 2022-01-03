//
//  LZBPSAbstractStreet.m
//  BridgePattern
//
//  Created by wlz on 2021/12/26.
//

#import "LZBPSConcreteStreet.h"

@implementation LZBPSConcreteStreet

- (void)run {
    [self.car carRun];
    NSLog(@"在市区道路上");
}
@end
