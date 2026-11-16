//
//  YPNetworkRouting.h
//  JokesObjC
//
//  Created by Roman Yaschenkov on 13.11.2026.
//

#ifndef YPNetworkRouting_h
#define YPNetworkRouting_h

#import <Foundation/Foundation.h>
@class YPNetworkResponse;

typedef void (^CompletionHandler)(YPNetworkResponse *response);

@protocol YPNetworkRouting

@required
- (void)fetch:(NSURL *)url withCompletion:(CompletionHandler)handler;

@end

#endif /* YPNetworkRouting_h */
