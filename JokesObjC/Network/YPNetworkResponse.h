//
//  YPNetworkResponse.h
//  JokesObjC
//
//  Created by Roman Yaschenkov on 30.09.2026.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, YPResult) {
    Success,
    Failure
};

@interface YPNetworkResponse : NSObject

@property (nonatomic, assign) YPResult result;
@property (nonatomic, strong) id data;
@property (nonatomic, strong) NSError *error;

- (instancetype)initSuccess:(id)data;
- (instancetype)initFailure:(NSError *)error;

@end

NS_ASSUME_NONNULL_END
