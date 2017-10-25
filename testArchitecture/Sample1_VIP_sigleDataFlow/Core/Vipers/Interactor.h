//
//  Interactor.h
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/13.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import "VIPProtocol.h"

@interface Interactor : NSObject <View2InteractorProtocol>

@property(nonatomic, strong) id<Interactor2PresenterProtocol> presenter;

@end
