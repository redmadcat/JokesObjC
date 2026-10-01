//
//  YPNetworkResponse.m
//  JokesObjC
//
//  Created by Roman Yaschenkov on 30.09.2026.
//

#import "YPNetworkResponse.h"

@implementation YPNetworkResponse

- (instancetype)initSuccess:(id)data {
    return [self initResponseWith:Success data:data orError:nil];
}

- (instancetype)initFailure:(NSError *)error {
    return [self initResponseWith:Failure data:nil orError:error];
}

- (instancetype)initResponseWith:(YPResult)result data:(id)data orError:(NSError *)error;
{
    if (self = [super init]) {
        _result = result;
        _data = data;
        _error = error;
    }
    return self;
}

@end
