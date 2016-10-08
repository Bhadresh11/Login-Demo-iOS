//
//  Global.h
//  DogWalker
//
//  Created by Bhadresh Patel on 9/22/16.
//  Copyright © 2016 Bhadresh Patel. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Global : NSObject

-(void)SaveCurrentLoginUserDta:(NSObject *)obj;
-(NSDictionary *)GetCurrentUsereDetails;
@end
