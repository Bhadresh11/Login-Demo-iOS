//
//  ViewController.h
//  Login-Demo
//
//  Created by Bhadresh Patel on 08/10/16.
//  Copyright © 2016 Bhadresh Patoliya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Global.h"
#import "AFNetworking.h"
#import "AppDelegate.h"

@interface ViewController : UIViewController
{
    AppDelegate *app;
    IBOutlet UITextField *txtPassword;
    IBOutlet UITextField *txtUserName;
}

@end

