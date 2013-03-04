//
//  ViewController.h
//  Tally Counter
//
//  Created by Juan Castro on 27/11/12.
//  Copyright (c) 2012 Jempe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Counter.h"


@interface ViewController : UIViewController <UIAlertViewDelegate> {
    Counter *currentCounter;
    IBOutlet UIView *landscapeView;
    
    IBOutlet UIView *portraitView;
    
}
@property (strong, nonatomic) IBOutlet UILabel *touchAnywhereLandscape;

@property (strong, nonatomic) IBOutlet UILabel *touchAnywherePortrait;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *optionsButtonLandscape;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *optionsButton;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *resetButton;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *resetButtonLandscape;
@property (strong, nonatomic) IBOutlet UILabel *counterNameLandscape;
@property (strong, nonatomic) IBOutlet UILabel *counterName;
- (IBAction)resetCountPressed:(id)sender;
- (IBAction)incButtonPressed:(id)sender;
- (IBAction)decButtonPressed:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *countLabel;
@property (strong, nonatomic) IBOutlet UILabel *countLabelPortrait;

@property (strong, nonatomic) IBOutlet UIView *portraitView;
@property (strong, nonatomic) IBOutlet UIView *landscapeView;


@end
