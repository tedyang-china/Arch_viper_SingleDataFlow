//
//  Router.h
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/13.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import "View.h"
#import "Presenter.h"

typedef enum : NSUInteger {
    ROUTEMODE_ROOT,
    ROUTEMODE_PUSH,
    ROUTEMODE_MODAL,
    ROUTEMODE_BACK,
} RouteMode;

@interface ModuleType: NSObject

@end

extern ModuleType * GetModuleType(RouteMode mode,NSString *moduleId);


@class Presenter;

@interface Router : NSObject

@property(nonatomic, weak) Presenter *presenter;    //注：Router持有presenter，因为在进行界面跳转时，需要从当前presenter的View获取界面跳转器

- (void)route:(ModuleType *)moduleType withInfo:(NSDictionary *)info;

@end
