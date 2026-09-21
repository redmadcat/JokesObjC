//
//  UILabel+Factory.h
//  JokesObjC
//
//  Created by Roman Yaschenkov on 03.09.2026.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class UILabelPadded;
@interface UILabel (UILabelFactory)

+ (UILabelPadded *)createWith:(NSString *)text;

+ (UILabelPadded *)createWith:(NSString *)text
          textAlignment:(NSTextAlignment)alignment;

+ (UILabelPadded *)createWith:(NSString *)text
          textAlignment:(NSTextAlignment)alignment
            textPostfix:(NSString *)textExtra;

+ (UILabelPadded *)createWith:(NSString *)text
          textAlignment:(NSTextAlignment)alignment
              textColor:(UIColor *)color
                   font:(UIFont *)font;

@end

NS_ASSUME_NONNULL_END
