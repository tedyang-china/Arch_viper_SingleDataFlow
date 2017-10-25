//
//  Interactor.m
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/13.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import "Interactor.h"

@implementation Interactor

@synthesize presenter;

#pragma mark -- View2InteractorProtocol
- (void)refresh:(id<Request>)req
{
    //TODO:处理业务逻辑
    
    //TODO：调present

    NSAssert(NO, ([NSString stringWithFormat:@"[%@] should be implemented in <%@>!", NSStringFromSelector(_cmd), NSStringFromClass(self.class)]));
}


@end
