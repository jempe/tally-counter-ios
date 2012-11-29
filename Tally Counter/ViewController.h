//
//  ViewController.h
//  Tally Counter
//
//  Created by Juan Castro on 27/11/12.
//  Copyright (c) 2012 Jempe. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSNumber *currentCount;
}
- (IBAction)incButtonPressed:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *countLabel;

@end
