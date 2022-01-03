//
//  LZComputer.m
//  BuilderPattern
//
//  Created by wlz on 2021/12/8.
//

#import "LZComputer.h"

@implementation LZComputer

- (NSString *)description {
    return [NSString stringWithFormat:@"cpu:%@||ram:%@||keyboard:%@||display:%@||usbCount:%d",self.cpu,self.ram,self.keyboard,self.display,self.usbCount];
}

@end
