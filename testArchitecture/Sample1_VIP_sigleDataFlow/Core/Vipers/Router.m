//
//  Router.m
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/13.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import "Router.h"
#import "ViperBinder.h"

@interface ModuleType()
@property(nonatomic, assign) RouteMode mode;
@property(nonatomic, strong) NSString *moduleId;
@property(nonatomic, strong) View *view;
@end

@implementation ModuleType

@end

ModuleType * GetModuleType(RouteMode mode,NSString *moduleId)
{
    ModuleType *mt = [ModuleType new];
    mt.mode = mode;
    mt.moduleId = moduleId;
    mt.view = [ViperBinder getView:moduleId];
    return mt;
};



@implementation Router

- (void)route:(ModuleType *)mt withInfo:(NSDictionary *)info
{
    if (!mt.view) {
        NSLog(@"can not find view for <%@>",mt.moduleId);
        return;
    }
    
    //传递界面参数
    [mt.view passParams:info];
    
    switch (mt.mode) {
        case ROUTEMODE_ROOT:
        {
            [UIApplication sharedApplication].delegate.window.rootViewController = mt.view;
        }
            break;
        case ROUTEMODE_PUSH:
        {
            [((View *)self.presenter.view).navigationController pushViewController:mt.view animated:YES];
        }
            break;
        case ROUTEMODE_MODAL:
        {
            [((View *)self.presenter.view) presentViewController:mt.view animated:YES completion:nil];
        }
            break;
        case ROUTEMODE_BACK:
        {
            if (!self.presenter.view) return;
            
            if (((View *)self.presenter.view).presentationController)
            {
                [mt.view dismissViewControllerAnimated:YES completion:nil];
            }
            else
            {
                [mt.view.navigationController popViewControllerAnimated:YES];
            }
        }
            break;
            
        default:
            break;
    }
}

@end
