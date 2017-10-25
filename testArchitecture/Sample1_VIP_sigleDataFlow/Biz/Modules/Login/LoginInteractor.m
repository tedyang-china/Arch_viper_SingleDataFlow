//
//  LoginInteractor.m
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/13.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import "LoginInteractor.h"
#import "GlobalEntity.h"

@implementation LoginInteractor

#pragma mark -- override View2InteractorProtocol
- (void)refresh:(id<Request>)req
{
    if ([req isMemberOfClass:[LoginRequest class]])
    {
        LoginResponse *resp = [[LoginResponse alloc] init];

        NSString *username = ((LoginRequest *)req).username;
        NSString *password = ((LoginRequest *)req).password;
        if (username.length == 0 || password == 0)
        {
            resp.isLoginSuccess = NO;
            resp.errmsg = @"username or password is nil";
            [self.presenter present:resp];
        }
        else
        {
            //TODO:req login data with provider
            
            resp.isLoginSuccess = YES;
            resp.nikeName = @"tedyang";
            [self.presenter present:resp];
        }
    }
}

@end
