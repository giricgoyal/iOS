//
//  agarwalResumeViewController.m
//  agarwalanshika
//
//  Created by anshika on 4/14/14.
//  Copyright (c) 2014 myorg. All rights reserved.
//

#import "agarwalResumeViewController.h"
#import "agarwalWebViewController.h"

@interface agarwalResumeViewController ()

@end

@implementation agarwalResumeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"webView"])
    {
        agarwalWebViewController *webView = (agarwalWebViewController *)segue.destinationViewController;
        NSString *urlString = [[NSBundle mainBundle] pathForResource:@"anshikaResume" ofType:@"pdf"];
        webView.urlString = [NSURL fileURLWithPath:urlString];
    }
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

@end
