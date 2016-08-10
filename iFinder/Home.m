//
//  Home.m
//  iFinder
//
//  Created by Tucker Morley on 04-11-16.
//  Copyright (c) 2016 Tucker Morley. All rights reserved.
//

#import "Home.h"

@interface Home ()

- (IBAction)showAlert:(UIBarButtonItem *)sender;

- (IBAction)movieLaunch:(id)sender;
- (IBAction)musicLaunch:(id)sender;
- (IBAction)photoLaunch:(id)sender;





@end

@implementation Home

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

- (IBAction)showAlert:(UIBarButtonItem *)sender {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Finder" message:@"The Macintosh Desktop Experience. iOS Version Developed by MΛGNΞTΛR, 'System' section coded by marekbell on GitHub. Finder is owned by Apple. TM and © 1983-2016 Apple Inc." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [alertView show];
}


- (IBAction)movieLaunch:(id)sender {
     [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"Videos://"]];
}

- (IBAction)musicLaunch:(id)sender {
         [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"music://"]];
}

- (IBAction)photoLaunch:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"photos-redirect://"]];
}
@end