//
//  UIView+Extension.h
//  JokesObjC
//
//  Created by Roman Yaschenkov on 07.09.2026.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, UIViewBorderSide) {
    Top,
    Left,
    Bottom,
    Right
};

@interface UIView (UIViewExtension)

- (void)addBorderTo:(UIViewBorderSide)side
        borderWidth:(CGFloat)width
        borderColor:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
