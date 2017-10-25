//
//  ViperBuilder.m
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/17.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import "ViperBuilder.h"
#import "ViperBinder.h"
#import "GlobalEntity.h"
#import "LoginView.h"
#import "LoginPresenter.h"
#import "LoginInteractor.h"
#import "MainView.h"
#import "MainPresenter.h"
#import "MainInteractor.h"

@implementation ViperBuilder

+ (void)initVipBinder
{
    [ViperBinder addVipWithVipStuctor:GetVipStuctor([LoginInteractor new], [LoginPresenter new], [LoginView new]) withVipId:GetModuleId(MODULE_LOGIN)];
    [ViperBinder addVipWithVipStuctor:GetVipStuctor([MainInteractor new], [MainPresenter new], [MainView new]) withVipId:GetModuleId(MODULE_MAIN)];
}

@end
