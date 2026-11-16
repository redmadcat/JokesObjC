//
//  YPJokesLoader.h
//  JokesObjC
//
//  Created by Roman Yaschenkov on 12.11.2026.
//

#ifndef YPJokesLoader_h
#define YPJokesLoader_h
#import <Foundation/Foundation.h>
@class YPNetworkResponse;

typedef void (^CompletionHandler)(YPNetworkResponse *response);

@protocol YPJokesLoader

@required
- (void)loadRandomJoke:(CompletionHandler)handler;

@end

#endif /* YPJokesLoader_h */
