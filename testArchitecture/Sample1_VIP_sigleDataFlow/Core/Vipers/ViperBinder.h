//
//  ViperBinder.h
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/18.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import "Interactor.h"
#import "Presenter.h"
#import "View.h"

@interface VipStuctor : NSObject

@property(nonatomic, strong) View *view;
@property(nonatomic, strong) Presenter *presenter;
@property(nonatomic, strong) Interactor *interactor;

VipStuctor *GetVipStuctor(Interactor *interactor_,Presenter *presenter_,View *view_);

@end


@interface ViperBinder : NSObject

+ (void)addVipWithVipStuctor:(VipStuctor *)vip withVipId:(NSString *)vipId;

+ (View *)getView:(NSString *)vipId;

@end
