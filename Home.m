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
- (IBAction)icloudLaunch:(UIButton *)sender;




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
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Finder" message:@"Developed by MΛGNΞTΛR, 'System' section coded by marekbell on GitHub." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [alertView show];
}

- (IBAction)icloudLaunch:(UIButton *)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"iclouddriveapp://"]];

}
@end