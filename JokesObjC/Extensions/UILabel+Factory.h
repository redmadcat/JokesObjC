//
//  UILabel+Factory.h
//  JokesObjC
//
//  Created by Roman Yaschenkov on 03.09.2026.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (UILabelFactory)

+ (UILabel *)createWith:(NSString *)text;

+ (UILabel *)createWith:(NSString *)text
          textAlignment:(NSTextAlignment)alignment;

+ (UILabel *)createWith:(NSString *)text
          textAlignment:(NSTextAlignment)alignment
            textPostfix:(NSString *)textExtra;

+ (UILabel *)createWith:(NSString *)text
          textAlignment:(NSTextAlignment)alignment
              textColor:(UIColor *)color
                   font:(UIFont *)font;

@end

NS_ASSUME_NONNULL_END
