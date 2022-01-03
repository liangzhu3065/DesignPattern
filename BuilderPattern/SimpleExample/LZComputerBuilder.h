//
//  LZComputerBuilder.h
//  BuilderPattern
//
//  Created by wlz on 2021/12/8.
//

#import <Foundation/Foundation.h>
#import "LZComputer.h"

NS_ASSUME_NONNULL_BEGIN

@interface LZComputerBuilder : NSObject

- (LZComputerBuilder *)builderCPU:(NSString *)cpu;
- (LZComputerBuilder *)builderRAM:(NSString *)ram;
- (LZComputerBuilder *)builderKeyboard:(NSString *)keyboard;
- (LZComputerBuilder *)builderDisplay:(NSString *)display;
- (LZComputerBuilder *)builderUsbCount:(int)usbCount;
- (LZComputer *)build;

@end

NS_ASSUME_NONNULL_END
