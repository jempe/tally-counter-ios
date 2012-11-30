//
//  Counter.h
//  Tally Counter
//
//  Created by Juan Castro on 29/11/12.
//  Copyright (c) 2012 Jempe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Counter : NSObject{
    int count;
    NSNumber *currentCount;
}
@property int count;

- (NSString *) displayCount;
- (void) increaseCount;
- (void) decreaseCount;

@end
