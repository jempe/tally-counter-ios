//
//  Counter.m
//  Tally Counter
//
//  Created by Juan Castro on 29/11/12.
//  Copyright (c) 2012 Jempe. All rights reserved.
//

#import "Counter.h"

@implementation Counter

- (int) count 
{
    return count;
    
    // comentario hecho por HUGO
}

- (void) increaseCount
{
    [self setCount:count + 1];
}

- (void) decreaseCount
{
    [self setCount:count - 1];
}

- (void) setCount:(int)countValue
{
    if(countValue >= 0)
    {
        count = countValue;
    }
    else
    {
        count = 0;
    }
}

- (NSString *) displayCount
{
    NSLog(@"count = %d", count);
    
    currentCount = [NSNumber numberWithInt:count];
    
    NSMutableString *displayCount = [[NSMutableString alloc] initWithString:@""];
    NSString *countString = [currentCount stringValue];
    
    int countStringLength = [countString length];
    
    if(countStringLength < 6)
    {
        
        for (int i = 0; i < (6 - countStringLength); i++) {
            [displayCount appendString:@"0"];
        }
    }
    
    [displayCount appendString:countString];
    
    return displayCount;
}

@end
