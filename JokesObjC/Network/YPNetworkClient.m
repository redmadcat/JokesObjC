//
//  YPNetworkClient.m
//  JokesObjC
//
//  Created by Roman Yaschenkov on 30.09.2026.
//

#import "YPNetworkClient.h"
#import "YPNetworkResponse.h"

@implementation YPNetworkClient

- (void)fetch:(NSURL *)url withCompletion:(CompletionHandler)handler {
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURLSessionDataTask *task =
        [session dataTaskWithRequest:request
               completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (error) {
            handler([[YPNetworkResponse new] initFailure:error]);
            return;
        }
        
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)response;
        if (httpResponse.statusCode < 200 || httpResponse.statusCode >= 300) {
            handler([[YPNetworkResponse new] initFailure:error]);
            return;
        }
        handler([[YPNetworkResponse new] initSuccess:data]);
    }];
    
    [task resume];
}

@end
