//
//  ViewController.m
//  Login-Demo v
//
//  Created by Bhadresh Patel on 08/10/16.
//  Copyright © 2016 Bhadresh Patoliya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    app =(AppDelegate *)[[UIApplication sharedApplication]delegate];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnLogin:(id)sender {
    
    NSString *string = @"your url name";
    NSDictionary *params = @{@"request": @"login",@"email": txtUserName.text, @"password": txtPassword.text,@"reg_id":@"token"};
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager POST:string parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"responseObject = %@", responseObject[@"data"]);
        /*
        [[NSUserDefaults standardUserDefaults]setValue:@"YesLogin" forKey:@"IsLogin"];
        [[NSUserDefaults standardUserDefaults]synchronize];
        
        [app.globle SaveCurrentLoginUserDta:responseObject[@"data"]];
        
        [self popoverPresentationController];
        
        NSString *userType = [responseObject[@"data"]valueForKey:@"type"];
        if ([userType isEqualToString:@"1"])
        {
            UIStoryboard *secondStoryBoard = [UIStoryboard storyboardWithName:@"StoryBoard1" bundle:nil];
            UIViewController *theTabBar = [secondStoryBoard instantiateViewControllerWithIdentifier:@"StoryBoard1VC"];
            
            [self.navigationController presentViewController:theTabBar animated:YES completion:nil];
        }
        else
        {
            UIStoryboard *secondStoryBoard = [UIStoryboard storyboardWithName:@"StoryBoard2" bundle:nil];
            UIViewController *theTabBar = [secondStoryBoard instantiateViewControllerWithIdentifier:@"StoryBoard"];
            
            [self.navigationController presentViewController:theTabBar animated:YES completion:nil];
        }
        */
        
    }
          failure:^(AFHTTPRequestOperation *operation, NSError *error) {
              NSLog(@"error = %@ operation:%@", error,operation.responseObject);
              UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Error" message:operation.responseObject[@"msg"] delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
              [alert show];
              
              
          }];
}


@end
