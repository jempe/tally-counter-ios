//
//  ViewController.m
//  Tally Counter
//
//  Created by Juan Castro on 27/11/12.
//  Copyright (c) 2012 Jempe. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize countLabel;

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
    currentCounter = [[Counter alloc] init];
    currentCounter.count = 0;
}

- (void)viewDidUnload
{
    [self setCountLabel:nil];
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
    // Return YES for supported orientations
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)incButtonPressed:(id)sender 
{ 
    (void) currentCounter.increaseCount;
    
    self.countLabel.text = currentCounter.displayCount;
}

- (IBAction)decButtonPressed:(id)sender 
{
    (void) currentCounter.decreaseCount;
    
    self.countLabel.text = currentCounter.displayCount;
}

@end
