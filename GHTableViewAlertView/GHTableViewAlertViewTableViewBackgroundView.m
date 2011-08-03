//
//  UITableViewAlertViewTableViewBackgroundView.m
//  ExampleApp
//
//  Created by Oliver Letterer on 30.01.11.
//  Copyright 2011 Home. All rights reserved.
//

#import "GHTableViewAlertViewTableViewBackgroundView.h"
#import <QuartzCore/QuartzCore.h>

@implementation GHTableViewAlertViewTableViewBackgroundView

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.layer.needsDisplayOnBoundsChange = YES;
        
        UIColor *startColor = [UIColor whiteColor];
        UIColor *endColor = [UIColor colorWithWhite:0.75f alpha:1.0f];
        
        CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceGray();
        CGFloat locations[] = { 0.0, 1.0 };
        
        NSArray *colors = [NSArray arrayWithObjects:(__bridge id)startColor.CGColor, (__bridge id)endColor.CGColor, nil];
        
        _gradient = CGGradientCreateWithColors(colorSpace, 
                                                            (__bridge CFArrayRef)colors, locations);
        
        CGColorSpaceRelease(colorSpace);
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code.
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGPoint startPoint = CGPointMake(CGRectGetMidX(super.bounds), CGRectGetMinY(super.bounds));
	CGPoint endPoint = CGPointMake(CGRectGetMidX(super.bounds), CGRectGetMaxY(super.bounds));
	
	CGContextDrawLinearGradient(context, _gradient, startPoint, endPoint, 0);
}

- (void)dealloc {
    if (_gradient) {
        CGGradientRelease(_gradient);
    }
}

@end
