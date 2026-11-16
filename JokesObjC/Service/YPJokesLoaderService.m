//
//  YPJokesLoaderService.m
//  JokesObjC
//
//  Created by Roman Yaschenkov on 12.11.2026.
//

#import "YPJokesLoaderService.h"
#import "YPNetworkRouting.h"
#import "YPNetworkClient.h"
#import "YPNetworkResponse.h"

@implementation YPJokesLoaderService

id<YPNetworkRouting> networkClient;

- (instancetype)init:(id<YPNetworkRouting>)networkClinet {
    if (self = [super init]) {
        networkClinet = networkClinet;
    }
    return self;
}

- (instancetype)init {
    return [self init:[YPNetworkClient new]];
}

- (void)loadRandomJoke:(CompletionHandler)handler {
    [networkClient fetch:[self url] withCompletion:^(YPNetworkResponse *response) {
        NSError *error = nil;
        id jsonObject;
        
        switch (response.result) {
            case Success:
                jsonObject = [NSJSONSerialization
                              JSONObjectWithData:response.data
                                         options:NSJSONReadingMutableContainers
                                           error:&error];
                if (error) {
                    handler([response initFailure:error]);
                }
                
                if ([jsonObject isKindOfClass:[NSDictionary class]]) {
                    NSDictionary *result = (NSDictionary *)jsonObject;
                    handler([response initSuccess:result]);
                }
                break;
            case Failure:
                handler([response initFailure:response.error]);
                break;
            default:
                break;
        }
    }];
}

- (NSURL *)url {
    return [NSURL URLWithString:@"https://official-joke-api.appspot.com/jokes/random"];
}

@end
