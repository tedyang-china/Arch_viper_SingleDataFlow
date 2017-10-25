//
//  GlobalEntity.m
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/13.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import "GlobalEntity.h"

NSString *GetModuleId(ModuleId moduleId)
{
    switch (moduleId) {
        case MODULE_LOGIN:
            return @"login";
            break;
        case MODULE_MAIN:
            return @"main";
            break;
        default:
            break;
    }
}

@implementation LoginRequest
@end

@implementation LoginResponse
@end

@implementation LoginViewModel
@end

@implementation MainRequest
@end

@implementation MainResponse
@end
