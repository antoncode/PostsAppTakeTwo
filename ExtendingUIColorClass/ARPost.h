//
//  ARPost.h
//  ExtendingUIColorClass
//
//  Created by Anton Rivera on 5/15/14.
//  Copyright (c) 2014 Anton Hilario Rivera. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ARPost : NSObject

@property(nonatomic, strong) NSString *userName, *title, *content;
@property(nonatomic, strong) NSDate *timeStamp;
@property(nonatomic, strong) UIColor *backgroundColor;

@end
