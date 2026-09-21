//
//  UILabelPadded.m
//  JokesObjC
//
//  Created by Roman Yaschenkov on 21.09.2026.
//

#import "UILabelPadded.h"

@implementation UILabelPadded

- (CGSize)intrinsicContentSize {
    CGSize size = super.intrinsicContentSize;
    return CGSizeMake(size.width + self.padding.left + self.padding.right,
                      size.height + self.padding.top + self.padding.bottom);
}

- (CGSize)sizeThatFits:(CGSize)size {
    CGSize fittingSize = [super sizeThatFits:size];
    return CGSizeMake(fittingSize.width + self.padding.left + self.padding.right,
                      fittingSize.height + self.padding.top + self.padding.bottom);
}

- (void)drawTextInRect:(CGRect)rect {
    CGRect paddedRect = UIEdgeInsetsInsetRect(rect, self.padding);
    [super drawTextInRect:paddedRect];
}

@end
