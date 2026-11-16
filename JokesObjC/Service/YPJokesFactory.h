//
//  YPJokesFactory.h
//  JokesObjC
//
//  Created by Roman Yaschenkov on 16.11.2026.
//

#ifndef YPJokesFactory_h
#define YPJokesFactory_h

@protocol YPJokesFactory

@required
- (void)requestNextJoke;

@end

#endif /* YPJokesFactory_h */
