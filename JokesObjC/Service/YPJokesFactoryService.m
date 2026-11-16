//
//  YPJokesFactoryService.m
//  JokesObjC
//
//  Created by Roman Yaschenkov on 16.11.2026.
//

#import "YPJokesFactoryService.h"

@implementation YPJokesFactoryService

YPJokesLoader *loader;
YPJokesFactoryDelegate *delegate;

- (instancetype)initFactoryWith:(YPJokesLoader *)loader delegate:(YPJokesFactoryDelegate *)delegate; {
    if (self = [super init]) {
        loader = loader;
        delegate = delegate;
    }
    return self;
}

- (void)requestNextJoke {
    
}

@end
