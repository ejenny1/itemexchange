//
//  SignupViewController.m
//  itemexchange
//
//  Created by luozhuang on 15/1/10.
//  Copyright (c) 2015年 seu. All rights reserved.
//

#import "SignupViewController.h"
#import <Parse/Parse.h>
@interface SignupViewController ()

@end

@implementation SignupViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    self.userRegisterTextField = nil;
    self.passwordRegisterTextFieldTwo = nil;
    self.passwordRegisterTextFieldone = nil;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)signupUserPressed:(id)sender {
    if ([self.passwordRegisterTextFieldone.text isEqualToString:self.passwordRegisterTextFieldTwo.text])
    {

        
   
        PFUser *user = [PFUser user];
        user.username = self.userRegisterTextField.text;
        user.password = self.passwordRegisterTextFieldTwo.text;
        [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
            if (!error) {
                [self performSegueWithIdentifier:@"SignupSuccesful" sender:self];
            }else {
                NSString *errorString = [[error userInfo] objectForKey:@"error"];
                UIAlertView *errorAlertView = [[UIAlertView alloc] initWithTitle:@"Error" message:errorString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
                [errorAlertView show];
            }
        }];
    }else{
        
    }
}
@end
