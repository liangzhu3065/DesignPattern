//
//  LZBUDirector.h
//  BuilderPattern
//
//  Created by wlz on 2021/12/22.
//

#import <Foundation/Foundation.h>
#import "LZBUKFCMealsBuilder.h"


NS_ASSUME_NONNULL_BEGIN

///指导者，创建统一组装类，可有可无
@interface LZBUDirector : NSObject

- (LZBUProduct *)constructBreakfast:(id<LZBUBuilderProtocol>)builder;

- (LZBUProduct *)constructLunch:(id<LZBUBuilderProtocol>)builder;

@end

NS_ASSUME_NONNULL_END
