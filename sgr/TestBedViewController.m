//
//  TestBedViewController.m
//  sgr
//
//  Created by Liu Yifan on 11-7-14.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "TestBedViewController.h"


@implementation TestBedViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (id) initWithDepth: (int) theDepth 
{
    self = [super init];
    
    if (self) depth = theDepth; 
    return self;
}
-(void) push
{
//    TestBedViewController *tbvc = [[[TestBedViewController alloc]
//                                    initWithDepth:(depth + 1)] autorelease];
//    [self.navigationController pushViewController:tbvc animated:YES];
}
-(void)loadView

{
    [super loadView];
//    self.view = [[[NSBundle mainBundle] loadNibNamed:@"mainview" 
//                                               owner:self options:nil] lastObject];
    NSString *valueString = [NSString stringWithFormat:@"%d", depth]; 
    NSString *nextString = [NSString stringWithFormat:@"Push %d", 
                            depth + 1];
    // set the title 
    self.title = [@"Simple Golf Rules" stringByAppendingString:valueString];
    // Set the main label 
    ((UILabel *)[self.view viewWithTag:101]).text = valueString;
    // Add the "next" bar button item. Max depth is 3 
    if (depth < 3) 
    {
        //        self.navigationItem.rightBarButtonItem =
        //        BARBUTTON (nextString, @selector(push));
    }
} 


- (void)dealloc
{
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

@end
