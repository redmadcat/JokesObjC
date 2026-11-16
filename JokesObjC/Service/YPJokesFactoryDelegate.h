//
//  YPJokesFactoryDelegate.h
//  JokesObjC
//
//  Created by Roman Yaschenkov on 16.11.2026.
//

#ifndef YPJokesFactoryDelegate_h
#define YPJokesFactoryDelegate_h
#import <Foundation/Foundation.h>
@class YPJoke;

@protocol YPJokesFactoryDelegate

@required
- (void)didReceiveNextJoke:(YPJoke *)joke;
- (void)didFailToLoadData:(NSError *)error;

@end

#endif /* YPJokesFactoryDelegate_h */
