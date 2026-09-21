//
//  UILabel+Factory.m
//  JokesObjC
//
//  Created by Roman Yaschenkov on 03.09.2026.
//

#import "UILabel+Factory.h"
#import "UIFont+Roboto.h"
#import "UIColor+JKColor.h"
#import "UILabelPadded.h"

@implementation UILabel (UILabelFactory)

+ (nonnull UILabelPadded *)createWith:(nonnull NSString *)text {
    return [UILabel createWith:text
                 textAlignment:NSTextAlignmentLeft
                     textColor:[UIColor jkBlackColor]
                          font:[UIFont robotoMedium16]];
}

+ (nonnull UILabelPadded *)createWith:(nonnull NSString *)text
                  textAlignment:(NSTextAlignment)alignment {
    return [UILabelPadded new];
}

+ (nonnull UILabelPadded *)createWith:(nonnull NSString *)text
                  textAlignment:(NSTextAlignment)alignment
                      textColor:(nonnull UIColor *)color
                           font:(nonnull UIFont *)font {
    UILabelPadded *label = [UILabelPadded new];
    label.text = NSLocalizedString(text, "");
    label.textAlignment = alignment;
    label.textColor = color;
    label.font = font;
    label.translatesAutoresizingMaskIntoConstraints = NO;
    return label;
}

+ (nonnull UILabelPadded *)createWith:(nonnull NSString *)text
                  textAlignment:(NSTextAlignment)alignment
                    textPostfix:(nonnull NSString *)textExtra {
    return [UILabelPadded new];
}

@end
