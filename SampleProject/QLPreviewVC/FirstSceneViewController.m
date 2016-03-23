//
//  FirstSceneViewController.m
//  QLPreviewVC
//
//  Created by Shashikant on 3/22/16.
//  Copyright © 2016 Shashikant. All rights reserved.
//

#import "FirstSceneViewController.h"

@implementation FirstSceneViewController

-(void)viewDidLoad{
}
-(void)viewWillAppear:(BOOL)animated{
    self.passTf.text = nil;
}

- (IBAction)loginButtonClicked:(id)sender {
    if ([self.nameTf.text isEqualToString:@"Shashikant"] &&[self.passTf.text isEqualToString:@"test1234"]) {
        [self performSegueWithIdentifier:@"LoginSuccessful" sender:self];
    }else{
        UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Login Failed"
                                                                       message:@"Please check username or password."
                                                                preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {}];
        
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
    }
}
@end
