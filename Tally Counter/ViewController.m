//
//  ViewController.m
//  Tally Counter
//
//  Created by Juan Castro on 27/11/12.
//  Copyright (c) 2012 Jempe. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize optionsButtonLandscape;
@synthesize optionsButton;
@synthesize resetButton;
@synthesize resetButtonLandscape;
@synthesize counterNameLandscape;
@synthesize counterName;
@synthesize countLabelPortrait;
@synthesize countLabel, portraitView, landscapeView;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(orientationChanged:) name:@"UIDeviceOrientationDidChangeNotification" object:nil];
    
    currentCounter = [[Counter alloc] init];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    int current_count = [defaults integerForKey:@"count"];
    
    currentCounter.count = current_count;
    self.countLabel.text = self.countLabelPortrait.text = currentCounter.displayCount;
    
    //Localization of UI Elements
    self.counterName.text = self.counterNameLandscape.text = NSLocalizedString(@"counter", nil);
    [self.resetButton setTitle: NSLocalizedString(@"reset", nil)];
    [self.resetButtonLandscape setTitle: NSLocalizedString(@"reset", nil)];
    [self.optionsButton setTitle: NSLocalizedString(@"options", nil)];
    [self.optionsButtonLandscape setTitle: NSLocalizedString(@"options", nil)];
}

- (void)viewDidUnload
{
    [self setCountLabel:nil];
    portraitView = nil;
    landscapeView = nil;
    portraitView = nil;
    [self setCountLabelPortrait:nil];
    [self setCounterName:nil];
    [self setCounterNameLandscape:nil];
    [self setResetButtonLandscape:nil];
    [self setResetButton:nil];
    [self setOptionsButton:nil];
    [self setOptionsButtonLandscape:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
       return YES;
}

- (IBAction)resetCountPressed:(id)sender {
    UIAlertView *message = [[UIAlertView alloc] initWithTitle: NSLocalizedString(@"reset_count", nil)
                                                      message: NSLocalizedString(@"want_to_reset", nil)
                                                     delegate:self
                                            cancelButtonTitle: NSLocalizedString(@"no", nil)
                                            otherButtonTitles: NSLocalizedString(@"yes", nil), nil];
    [message show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    if([title isEqualToString:NSLocalizedString(@"yes", nil)])
    {
        [currentCounter setCount:0];
        self.countLabel.text = self.countLabelPortrait.text = currentCounter.displayCount;
    }
}

- (IBAction)incButtonPressed:(id)sender 
{ 
    (void) currentCounter.increaseCount;
    
    self.countLabel.text = self.countLabelPortrait.text = currentCounter.displayCount;
}

- (IBAction)decButtonPressed:(id)sender 
{
    (void) currentCounter.decreaseCount;
    
    self.countLabel.text = self.countLabelPortrait.text = currentCounter.displayCount;
}

- (void) orientationChanged:(id)object
{  
	UIDeviceOrientation interfaceOrientation = [[object object] orientation];
	
            NSLog(@"orientation %u", interfaceOrientation);
    
	if (interfaceOrientation == UIInterfaceOrientationLandscapeRight || interfaceOrientation == UIInterfaceOrientationLandscapeLeft) 
	{
		self.view = self.landscapeView;
	} 
	else 
	{
		self.view = self.portraitView;
	}
}

@end
