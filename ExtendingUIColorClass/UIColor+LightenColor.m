//
//  UIColor+LightenColor.m
//  ExtendingUIColorClass
//
//  Created by Anton Rivera on 5/15/14.
//  Copyright (c) 2014 Anton Hilario Rivera. All rights reserved.
//

#import "UIColor+LightenColor.h"

@implementation UIColor (LightenColor)

+(UIColor *)lightenColor:(UIColor *)c
{
    CGFloat r, g, b, a;
    if ([c getRed:&r green:&g blue:&b alpha:&a])
        return [UIColor colorWithRed:MIN(r + 0.2, 1.0)
                               green:MIN(g + 0.2, 1.0)
                                blue:MIN(b + 0.2, 1.0)
                               alpha:a];
    return nil;
}

@end
