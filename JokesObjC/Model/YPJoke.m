//
//  YPJoke.m
//  JokesObjC
//
//  Created by Roman Yaschenkov on 16.11.2026.
//

#import "YPJoke.h"

@implementation YPJoke

- (instancetype)
    initWithId:(NSInteger )id
          type:(NSString *)type
         setup:(NSString *)setup
     punchline:(NSString *)punchline {
    if (self = [super init]) {
        id = id;
        type = type;
        setup = setup;
        punchline = punchline;
    }
    return self;
}

@end
