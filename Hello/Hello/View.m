//
//  View.m
//  Hello
//
//  Created by Anita Gupta on 6/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//


#import "View.h"

@implementation View

- (id) initWithFrame: (CGRect) frame
{
    self = [super initWithFrame: frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor orangeColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void) drawRect: (CGRect) rect
{
    // Drawing code
     UIFont *font = [UIFont boldSystemFontOfSize: 26.0];
    
    NSURL *url = [[NSURL alloc] initWithString:
                  @"http://finance.yahoo.com/d/quotes.csv?s=GOOG&f=sl1t1"];
    
	NSError *error;
	NSString *string = [[NSString alloc]
                        initWithContentsOfURL: url
                        encoding: NSUTF8StringEncoding
                        error: &error
                        ];
    
	if (string == nil) {
		string = [error localizedDescription];
	}
    
    //NSString *string2 = @"👽😞😁😘 \nHello Anita \t ";
    

    CGSize size = [string sizeWithFont: font];
	CGRect b = self.bounds;
	CGFloat x = b.origin.x + (b.size.width - size.width) / 2 ;
	CGFloat y = b.origin.y + (b.size.height - size.height) / 2 + 50;
    CGContextRef c = UIGraphicsGetCurrentContext();
	CGContextSetRGBFillColor(c, 0, .5, 1.0, 1.0); //red, green, blue, alpha

	CGPoint point = CGPointMake(x, y);
    [string drawAtPoint: point withFont: font];
    
   
    
    
    
    
    
    
    UIFont *font2 = [UIFont boldSystemFontOfSize: 32.0];
    
    NSString *string2 = @"👽😞😁😘 \nHello Anita \t ";
    
     size = [string2 sizeWithFont: font2];
	 b = self.bounds;
	 x = b.origin.x + (b.size.width - size.width) / 2;
	 y = b.origin.y + (b.size.height - size.height) / 2;
     c = UIGraphicsGetCurrentContext();
	CGContextSetRGBFillColor(c, 1, .5, 1.0, 1.0); //red, green, blue, alpha

	 point = CGPointMake(x, y);
    [string2 drawAtPoint: point withFont: font2];
    
    
    font2 = [UIFont boldSystemFontOfSize: 12.0];
    UIDevice *device = [UIDevice currentDevice];
    NSString *string3 = device.uniqueIdentifier;
    size = [string3 sizeWithFont: font2];
    b = self.bounds;
    x = b.origin.x + (b.size.width - size.width) / 2;
    y = b.origin.y + (b.size.height - size.height) / 2 + 100;
    c = UIGraphicsGetCurrentContext();
	CGContextSetRGBFillColor(c, 1, .5, .5, 1.0); //red, green, blue, alpha
    
    point = CGPointMake(x, y);
    [string3 drawAtPoint: point withFont: font2];

    
}

@end
