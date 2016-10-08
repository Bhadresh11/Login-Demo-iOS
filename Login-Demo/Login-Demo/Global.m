//
//  Global.m
//  DogWalker
//
//  Created by Bhadresh Patel on 9/22/16.
//  Copyright © 2016 Bhadresh Patel. All rights reserved.
//

#import "Global.h"

@implementation Global

-(void)SaveCurrentLoginUserDta:(NSObject *)obj
{
    NSLog(@"usernfo:%@",obj);
    NSUserDefaults *defUser = [NSUserDefaults standardUserDefaults];
    
    [defUser setObject:[obj valueForKey:@"name"] forKey:@"name"];
    [defUser setObject:[obj valueForKey:@"address"] forKey:@"address"];
    [defUser setObject:[obj valueForKey:@"email"] forKey:@"email"];
    [defUser setObject:[obj valueForKey:@"filename"] forKey:@"filename"];
    [defUser setObject:[obj valueForKey:@"id"] forKey:@"strid"];
    [defUser setObject:[obj valueForKey:@"isonline"] forKey:@"isonline"];
    [defUser setObject:[obj valueForKey:@"latitude"] forKey:@"latitude"];
    [defUser setObject:[obj valueForKey:@"longitude"] forKey:@"longitude"];
    [defUser setObject:[obj valueForKey:@"number"] forKey:@"number"];
    [defUser setObject:[obj valueForKey:@"password"] forKey:@"password"];
    [defUser setObject:[obj valueForKey:@"rate"] forKey:@"rate"];
    [defUser setObject:[obj valueForKey:@"reg_id"] forKey:@"reg_id"];
    [defUser setObject:[obj valueForKey:@"type"] forKey:@"type"];
    
    [[NSUserDefaults standardUserDefaults]synchronize];

}
-(NSDictionary *)GetCurrentUsereDetails
{
    NSUserDefaults *defUser = [NSUserDefaults standardUserDefaults];
    NSDictionary *dict;
    
    NSString *name = [defUser valueForKey:@"name"];
    NSString *address = [defUser valueForKey:@"address"];
    NSString *email = [defUser valueForKey:@"email"];
    NSString *filename = [defUser valueForKey:@"filename"];
    NSString *strid = [defUser valueForKey:@"strid"];
    NSString *isonline = [defUser valueForKey:@"isonline"];
    NSString *latitude = [defUser valueForKey:@"latitude"];
    NSString *longitude = [defUser valueForKey:@"longitude"];
    NSString *number = [defUser valueForKey:@"number"];
    NSString *password = [defUser valueForKey:@"password"];
    NSString *rate = [defUser valueForKey:@"rate"];
    NSString *reg_id = [defUser valueForKey:@"reg_id"];
    NSString *type = [defUser valueForKey:@"type"];
    
    if (name != nil && address != nil && email != nil && filename != nil && strid != nil && isonline != nil &&latitude != nil && longitude != nil && number != nil && password != nil && rate != nil&& reg_id != nil && type != nil)
    {
        dict = @{@"name":name,
                 @"address":address,
                 @"email":email,
                 @"filename":filename,
                 @"strid":strid,
                 @"isonline":isonline,
                 @"latitude":latitude,
                 @"longitude":longitude,
                 @"number":number,
                 @"password":password,
                 @"rate":rate,
                 @"reg_id":reg_id,
                 @"type":type
                 };
    }
    else
    {
        NSLog(@"somthing missing");
    }
    return dict;
}

@end
