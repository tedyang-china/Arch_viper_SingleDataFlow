//
//  ViperBinder.m
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/18.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import "ViperBinder.h"



@implementation VipStuctor

- (void)validate
{
#if DEBUG
    NSAssert(self.view!=nil, @"please set 'View' in VipStuctor");
    NSAssert(self.presenter!=nil, @"please set 'Presenter' in VipStuctor");
    NSAssert(self.interactor!=nil, @"please set 'Interactor' in VipStuctor");
#endif
    
}

VipStuctor *GetVipStuctor(Interactor *interactor_,Presenter *presenter_,View *view_)
{
    VipStuctor *vipStructor = [VipStuctor new];
    vipStructor.view = view_;
    vipStructor.presenter = presenter_;
    vipStructor.interactor = interactor_;
    
    [vipStructor validate];
    
    return vipStructor;
};

@end


@implementation ViperBinder

static NSMutableDictionary<NSString *, VipStuctor *> *viperStuctors;

+ (void)addVipWithVipStuctor:(VipStuctor *)vip withVipId:(NSString *)vipId
{
    if (!viperStuctors) {
        viperStuctors = [NSMutableDictionary dictionary];
    }
    viperStuctors[vipId] = vip;
}

+ (View *)getView:(NSString *)vipId
{
    
    if (viperStuctors && viperStuctors[vipId])
    {
        //Bind
        VipStuctor *stu = viperStuctors[vipId];
        stu.view.interactor = stu.interactor;
        stu.interactor.presenter = stu.presenter;
        stu.presenter.view = stu.view;
        
        return viperStuctors[vipId].view;
    }
    
    NSLog(@"can not get view");
    return nil;
}

@end

