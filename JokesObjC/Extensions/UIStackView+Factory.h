//
//  UIStackView+Factory.h
//  JokesObjC
//
//  Created by Roman Yaschenkov on 03.09.2026.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIStackView (UIStackViewFactory)

+ (nonnull UIStackView *)
    createWithAxis:(UILayoutConstraintAxis)axis
      distribution:(UIStackViewDistribution)distribution
         alignment:(UIStackViewAlignment)alignment
        andSpacing:(CGFloat)spacing;

@end

NS_ASSUME_NONNULL_END
