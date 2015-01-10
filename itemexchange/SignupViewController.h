//
//  SignupViewController.h
//  itemexchange
//
//  Created by luozhuang on 15/1/10.
//  Copyright (c) 2015年 seu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignupViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *userRegisterTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordRegisterTextFieldone;
@property (strong, nonatomic) IBOutlet UITextField *passwordRegisterTextFieldTwo;
- (IBAction)signupUserPressed:(id)sender;

@end
