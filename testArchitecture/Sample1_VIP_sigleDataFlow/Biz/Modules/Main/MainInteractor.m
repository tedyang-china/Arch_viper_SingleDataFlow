//
//  MainInteractor.m
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/18.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import "MainInteractor.h"
#import "GlobalEntity.h"
@implementation MainInteractor

#pragma mark -- override
-(void)refresh:(id<Request>)req
{
    if ([req isMemberOfClass:[MainRequest class]])
    {
        switch (((MainRequest *)req).eCase) {
            case MAIN_REQUEST_BACK:
            {
                MainResponse *resp = [MainResponse new];
                resp.eCase = MAIN_RESPONSE_BACK;
                [self.presenter present:resp];
            }
                break;
        }
    }
}

@end
