//
//  LZComputerBuilder.m
//  BuilderPattern
//
//  Created by wlz on 2021/12/8.
//

#import "LZComputerBuilder.h"

@interface LZComputerBuilder()

@property (nonatomic, strong) LZComputer *computer;

@end

@implementation LZComputerBuilder

- (instancetype)init {
    self = [super init];
    if (self) {
        _computer = [[LZComputer alloc] init];
    }
    return self;
}

- (LZComputerBuilder *)builderCPU:(NSString *)cpu {
    _computer.cpu = cpu;
    return self;
}

- (LZComputerBuilder *)builderRAM:(NSString *)ram {
    _computer.ram = ram;
    return self;
}

- (LZComputerBuilder *)builderKeyboard:(NSString *)keyboard {
    _computer.keyboard = keyboard;
    return self;
}

- (LZComputerBuilder *)builderDisplay:(NSString *)display {
    _computer.display = display;
    return self;
}

- (LZComputerBuilder *)builderUsbCount:(int)usbCount {
    _computer.usbCount = usbCount;
    return self;
}

- (LZComputer *)build {
    return _computer;
}

@end
