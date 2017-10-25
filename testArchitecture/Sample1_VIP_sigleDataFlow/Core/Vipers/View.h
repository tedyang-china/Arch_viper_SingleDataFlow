//
//  View.h
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/13.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VIPProtocol.h"
#import "Router.h"
#import "Interactor.h"


@interface View : UIViewController <Presenter2ViewProtocol>

@property(nonatomic, strong) Interactor *interactor;

@end
