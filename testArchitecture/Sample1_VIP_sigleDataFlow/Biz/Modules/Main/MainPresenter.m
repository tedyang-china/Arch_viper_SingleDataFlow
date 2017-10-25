//
//  MainPresenter.m
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/18.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import "MainPresenter.h"
#import "GlobalEntity.h"

@implementation MainPresenter

#pragma mark -- override
-(void)present:(id<Response>)resp
{
    if ([resp isMemberOfClass:[MainResponse class]])
    {
        
        switch (((MainResponse *)resp).eCase) {
            case MAIN_RESPONSE_BACK:
                    [self.router route:GetModuleType(ROUTEMODE_BACK, GetModuleId(MODULE_LOGIN)) withInfo:@{@"ctx":@"back from main page"}];
                break;
        }
    }
}

@end
