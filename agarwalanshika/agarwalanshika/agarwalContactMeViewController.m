//
//  agarwalContactMeViewController.m
//  agarwalanshika
//
//  Created by anshika on 4/13/14.
//  Copyright (c) 2014 myorg. All rights reserved.
//

#import "agarwalContactMeViewController.h"

@interface agarwalContactMeViewController ()

@end

@implementation agarwalContactMeViewController
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)goToFacebook:(id)sender {
    NSURL *fbURL = [[NSURL alloc] initWithString:@"fb://profile/anshikaag07"];
    // check if app is installed
    if ( ! [[UIApplication sharedApplication] canOpenURL:fbURL] ) {
        // if we get here, we can't open the FB app.
        fbURL = [[NSURL alloc] initWithString:@"https://www.facebook.com/anshikaag07"];// direct URL on FB website to open in safari
    }
    
    [[UIApplication sharedApplication] openURL:fbURL];
}

- (IBAction)goToTwitter:(id)sender {
    NSURL *twURL = [[NSURL alloc] initWithString:@"twitter://user?screen_name=anshika"];
    // check if app is installed
    if ( ! [[UIApplication sharedApplication] canOpenURL:twURL] ) {
        // if we get here, we can't open the twitter app.
        twURL = [[NSURL alloc] initWithString:@"https://twitter.com/AnshikaAg07"];// direct URL on twitter website to open in safari
    }
    
    [[UIApplication sharedApplication] openURL:twURL];
    
}

- (IBAction)goToLinkedIn:(id)sender {
    NSURL *liURL = [[NSURL alloc] initWithString:@"linkedin://#profile/anshikaagarwaluic"];
    // check if app is installed
    if ( ! [[UIApplication sharedApplication] canOpenURL:liURL] ) {
        // if we get here, we can't open the linkediN app.
        liURL = [[NSURL alloc] initWithString:@"https://www.linkedin.com/in/anshikaagarwaluic"];// direct URL on linkedin website to open in safari
    }
    [[UIApplication sharedApplication] openURL:liURL];
    
}

- (IBAction)mailMe:(id)sender {
    NSURL *mailURL = [[NSURL alloc] initWithString:@"mailto:anshika.ag07@gmail.com"];
    if ([[UIApplication sharedApplication] canOpenURL:mailURL]) {
        [[UIApplication sharedApplication] openURL:mailURL];
    }
    else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Contact me at:"
                                                        message:@"anshika dot ag07 at gmail dot com"
                                                       delegate:nil
                                              cancelButtonTitle:@"Dismiss"
                                              otherButtonTitles:nil];
        [alert show];
    }
}

@end
