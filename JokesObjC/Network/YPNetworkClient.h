//
//  YPNetworkClient.h
//  JokesObjC
//
//  Created by Roman Yaschenkov on 30.09.2026.
//

#import <Foundation/Foundation.h>
#import "YPNetworkRouting.h"
@class YPNetworkResponse;

NS_ASSUME_NONNULL_BEGIN

typedef void (^CompletionHandler)(YPNetworkResponse *response);

@interface YPNetworkClient : NSObject <YPNetworkRouting>

@end

NS_ASSUME_NONNULL_END
