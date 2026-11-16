//
//  YPJoke.h
//  JokesObjC
//
//  Created by Roman Yaschenkov on 16.11.2026.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YPJoke : NSObject

@property (nonatomic, assign) NSInteger id;
@property (nonatomic, assign) NSString *type;
@property (nonatomic, assign) NSString *setup;
@property (nonatomic, assign) NSString *punchline;

- (instancetype)
    initWithId:(NSInteger )id
          type:(NSString *)type
         setup:(NSString *)setup
     punchline:(NSString *)punchline;

@end

NS_ASSUME_NONNULL_END
