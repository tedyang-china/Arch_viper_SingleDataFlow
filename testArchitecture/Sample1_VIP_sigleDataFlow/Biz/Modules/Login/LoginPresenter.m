//
//  LoginPresenter.m
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/17.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import "LoginPresenter.h"
#import "GlobalEntity.h"
#import "LoginView.h"

@implementation LoginPresenter

#pragma mark -- Interactor2PresenterProtocol
- (void)present:(id<Response>)resp
{
    if ([resp isMemberOfClass:[LoginResponse class]])
    {
        LoginResponse *response = (LoginResponse *)resp;
        
        if (response.isLoginSuccess)
        {
            [self.router route:GetModuleType(ROUTEMODE_MODAL, GetModuleId(MODULE_MAIN)) withInfo:@{@"ctx":[NSString stringWithFormat:@"Hello %@,Welcome to main page", response.nikeName]}];
        }
        else
        {
            LoginViewModel *vm = [[LoginViewModel alloc] init];
            vm.tipText = response.errmsg;
            vm.passwordText = @"";
            vm.usernameText = @"";
            [self.view display:vm];
        }
    }
}

@end
