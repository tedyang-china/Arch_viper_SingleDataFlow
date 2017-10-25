//
//  Presenter.m
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/13.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import "Presenter.h"

@implementation Presenter

@synthesize view;

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.router = [Router new];
        self.router.presenter = self;
    }
    return self;
}

#pragma mark -- Interactor2PresenterProtocol
- (void)present:(id<Response>)resp
{
    NSAssert(NO, ([NSString stringWithFormat:@"[%@] should be implemented in <%@>!", NSStringFromSelector(_cmd), NSStringFromClass(self.class)]));
}

@end
