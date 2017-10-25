//
//  VIPProtocol.h
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/12.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Request <NSObject>

@end

@protocol Response <NSObject>

@end

@protocol ViewModel <NSObject>

@end



@protocol View2InteractorProtocol <NSObject>

@required
- (void)refresh:(id<Request>)req;

@end


@protocol Interactor2PresenterProtocol <NSObject>

@required
- (void)present:(id<Response>)resp;

@end


@protocol Presenter2ViewProtocol <NSObject>

@required
- (void)display:(id<ViewModel>)vm;

@optional
- (void)passParams:(NSDictionary *)info;

@end



