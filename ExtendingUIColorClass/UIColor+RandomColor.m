//
//  UIColor+RandomColor.m
//  ExtendingUIColorClass
//
//  Created by Anton Rivera on 5/15/14.
//  Copyright (c) 2014 Anton Hilario Rivera. All rights reserved.
//

#import "UIColor+RandomColor.h"

@implementation UIColor (RandomColor)

+ (UIColor *)retrieveRandomColor
{
    CGFloat r = arc4random() % 256 / 256.0;
    CGFloat g = arc4random() % 256 / 256.0;
    CGFloat b = arc4random() % 256 / 256.0;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1.0];
}


@end
