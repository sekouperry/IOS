//
//  LoginViewController.h
//  SanGuoFruit
//
//  Created by huang he on 13-4-7.
//  Copyright (c) 2013年 huang he. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController{
    IBOutlet UITextField *uitextFieldUsername;
    IBOutlet UITextField *uitextFieldPassword;
}
@property(nonatomic,retain)UITextField *uitextFieldUsername;
@property(nonatomic,retain)UITextField *uitextFieldPassword;


-(IBAction)onButtonLogin:(id)sender;
-(IBAction)onButtonRegister:(id)sender;
-(IBAction)onButtonForgotPassword:(id)sender;

@end
