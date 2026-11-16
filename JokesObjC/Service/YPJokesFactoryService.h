//
//  YPJokesFactoryService.h
//  JokesObjC
//
//  Created by Roman Yaschenkov on 16.11.2026.
//

#import <Foundation/Foundation.h>
#import "YPJokesFactory.h"
@class YPJokesLoader;
@class YPJokesFactoryDelegate;

NS_ASSUME_NONNULL_BEGIN

@interface YPJokesFactoryService : NSObject <YPJokesFactory>

- (instancetype)initFactoryWith:(YPJokesLoader *)loader delegate:(YPJokesFactoryDelegate *)delegate;

@end

NS_ASSUME_NONNULL_END
