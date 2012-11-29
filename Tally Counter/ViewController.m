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
    
    currentCount = [[NSNumber alloc] initWithInt:0];
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

- (IBAction)incButtonPressed:(id)sender {
    
    int value = [currentCount intValue];
    currentCount = [NSNumber numberWithInt:value + 1];
    
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
    
    NSLog(@"%@", displayCount);
    
    self.countLabel.text = displayCount;
    
    
}

@end
