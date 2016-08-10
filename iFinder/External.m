//
//  External.m
//  iOS File Browser
//
//  Created by Tucker Morley on 4/11/16.
//  Copyright © 2016 Dynamically Loaded. All rights reserved.
//

#import "External.h"

@interface External ()

@end

@implementation External
@synthesize myWebView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *urlString = @"http://msdevs.x10.mx/apps/ifinderexternal/";
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSOperationQueue *queue = [[NSOperationQueue alloc] init];
    
    [NSURLConnection sendAsynchronousRequest:request queue:queue
                           completionHandler:^(NSURLResponse *response, NSData *data, NSError *error) {
                               if ([data length] > 0 && error == nil) [myWebView loadRequest:request];
                               else if (error != nil) NSLog(@"Error: %@", error);
                           }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end