//
//  UIView+Extension.m
//  JokesObjC
//
//  Created by Roman Yaschenkov on 07.09.2026.
//

#import "UIView+Extension.h"

@implementation UIView (UIViewExtension)

- (void)addBorderTo:(UIViewBorderSide)side
        borderWidth:(CGFloat)width
        borderColor:(UIColor *)color {
    UIView *border = [UIView new];
    border.backgroundColor = color;
    
    switch (side) {
        case Top:
            border.layer.frame = CGRectMake(0, 0, self.frame.size.width, width);
            border.autoresizingMask =
                UIViewAutoresizingFlexibleWidth |
                UIViewAutoresizingFlexibleBottomMargin;
            break;
        case Left:
            border.layer.frame = CGRectMake(0, 0, width, self.frame.size.height);
            border.autoresizingMask =
                UIViewAutoresizingFlexibleHeight |
                UIViewAutoresizingFlexibleRightMargin;
            break;
        case Bottom:
            border.layer.frame = CGRectMake(0, self.frame.size.height - width, self.frame.size.width, width);
            border.autoresizingMask =
                UIViewAutoresizingFlexibleWidth |
                UIViewAutoresizingFlexibleTopMargin;
            break;
        case Right:
            border.layer.frame = CGRectMake(self.frame.size.width - width, 0, width, self.frame.size.height);
            border.autoresizingMask =
                UIViewAutoresizingFlexibleHeight |
                UIViewAutoresizingFlexibleLeftMargin;
            break;
    }
    [self addSubview:border];
}

@end
