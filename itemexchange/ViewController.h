//
//  ViewController.h
//  itemexchange
//
//  Created by luozhuang on 15/1/10.
//  Copyright (c) 2015年 seu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *userTextField;

@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
- (IBAction)logInPressed:(id)sender;

@end

