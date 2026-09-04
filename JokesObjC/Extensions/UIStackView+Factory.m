//
//  UIStackView+Factory.m
//  JokesObjC
//
//  Created by Roman Yaschenkov on 03.09.2026.
//

#import "UIStackView+Factory.h"

@implementation UIStackView  (UIStackViewFactory)

+ (nonnull UIStackView *)
    createWithAxis:(UILayoutConstraintAxis)axis
      distribution:(UIStackViewDistribution)distribution
         alignment:(UIStackViewAlignment)alignment
        andSpacing:(CGFloat)spacing {
    
    UIStackView *stackView = [UIStackView new];
    stackView.translatesAutoresizingMaskIntoConstraints = NO;
    stackView.axis = axis;
    stackView.spacing = spacing;
    stackView.distribution = distribution;
    stackView.alignment = alignment;
    return stackView;
}

+ (nonnull UIStackView *)
    createWithAxis:(UILayoutConstraintAxis)axis
      distribution:(UIStackViewDistribution)distribution
         alignment:(UIStackViewAlignment)alignment
        spacing:(CGFloat)spacing
    borderWidth:(CGFloat)borderWidth
    corderRadius:(CGFloat)corderRadius {
    
    UIStackView *stackView =
        [UIStackView createWithAxis:axis
                       distribution:distribution
                          alignment:alignment
                         andSpacing:spacing];
    stackView.layer.borderWidth = borderWidth;
    stackView.layer.cornerRadius = corderRadius;
    return stackView;
}

@end
