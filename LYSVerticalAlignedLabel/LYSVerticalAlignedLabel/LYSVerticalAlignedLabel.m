//
//  LYSVerticalAlignedLabel.m
//  LYSVerticalAlignedLabel
//
//  Created by jk on 2017/3/7.
//  Copyright © 2017年 Goldcard. All rights reserved.
//

#import "LYSVerticalAlignedLabel.h"

@implementation LYSVerticalAlignedLabel

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines{
    CGRect rect = [super textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
    switch (self.alignDirection) {
        case Top:
            rect.origin.y = bounds.origin.y;
            break;
        case Bottom:
            rect.origin.y = bounds.origin.y + bounds.size.height - rect.size.height;
            break;
        case Center:
            rect.origin.y = (bounds.origin.y + bounds.size.height - rect.size.height)/2;
            break;
    }
    return rect;
}

- (void)drawTextInRect:(CGRect)rect{
    CGRect actualRect = [self textRectForBounds:rect limitedToNumberOfLines:self.numberOfLines];
    [super drawTextInRect:actualRect];
}

@end
