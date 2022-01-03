//
//  LZSingletonObj.m
//  SingletonPattern
//
//  Created by wlz on 2021/12/22.
//

#import "LZSingletonObj.h"

@implementation LZSingletonObj

static LZSingletonObj *_instance = nil;

+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    return _instance;
}
                                                        
- (id)copyWithZone:(NSZone *)zone {
    return _instance;
}
                                                        
- (id)mutableCopyWithZone:(NSZone *)zone {
    return _instance;
}
@end
