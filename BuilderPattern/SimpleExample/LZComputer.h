//
//  LZComputer.h
//  BuilderPattern
//
//  Created by wlz on 2021/12/8.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LZComputer : NSObject

@property (nonatomic, copy) NSString *cpu;
@property (nonatomic, copy) NSString *ram;
@property (nonatomic, copy) NSString *keyboard;
@property (nonatomic, copy) NSString *display;
@property (nonatomic, assign) int usbCount;

@end

NS_ASSUME_NONNULL_END
