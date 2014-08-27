//
//  agarwalViewController.m
//  agarwalanshika
//
//  Created by anshika on 4/13/14.
//  Copyright (c) 2014 myorg. All rights reserved.
//

#import "agarwalViewController.h"
#import "agarwalWebViewController.h"

@interface agarwalViewController ()

@end

@implementation agarwalViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"webView"])
    {
        agarwalWebViewController *webView = (agarwalWebViewController *)segue.destinationViewController;
        NSString *urlString = @"http://aagarw6.wix.com/aboutme";
        webView.urlString = [NSURL URLWithString:urlString];
    }
}

@end
