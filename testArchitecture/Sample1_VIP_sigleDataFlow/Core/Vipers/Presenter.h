//
//  Presenter.h
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/13.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import "VIPProtocol.h"
#import "Router.h"

@class Router;

@interface Presenter : NSObject <Interactor2PresenterProtocol>

@property(nonatomic, weak) id<Presenter2ViewProtocol> view;
@property(nonatomic, strong) Router *router;

@end
