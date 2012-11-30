//
//  ViewController.h
//  Tally Counter
//
//  Created by Juan Castro on 27/11/12.
//  Copyright (c) 2012 Jempe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Counter.h"


@interface ViewController : UIViewController{
    Counter *currentCounter;
}
- (IBAction)incButtonPressed:(id)sender;
- (IBAction)decButtonPressed:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *countLabel;

@end
