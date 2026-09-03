//
//  UILabel+Factory.m
//  JokesObjC
//
//  Created by Roman Yaschenkov on 03.09.2026.
//

#import "UILabel+Factory.h"
#import "UIFont+Roboto.h"
#import "UIColor+JKColor.h"

@implementation UILabel (UILabelFactory)

+ (nonnull UILabel *)createWith:(nonnull NSString *)text {
    return [UILabel createWith:text
                 textAlignment:NSTextAlignmentLeft
                     textColor:[UIColor jkBlackColor]
                          font:[UIFont robotoMedium16]];
}

+ (nonnull UILabel *)createWith:(nonnull NSString *)text
                  textAlignment:(NSTextAlignment)alignment {
    return [UILabel new];
}

+ (nonnull UILabel *)createWith:(nonnull NSString *)text
                  textAlignment:(NSTextAlignment)alignment
                      textColor:(nonnull UIColor *)color
                           font:(nonnull UIFont *)font {
    return [UILabel new];
}

+ (nonnull UILabel *)createWith:(nonnull NSString *)text
                  textAlignment:(NSTextAlignment)alignment
                    textPostfix:(nonnull NSString *)textExtra {
    return [UILabel new];
}

@end
