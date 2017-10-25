//
//  GlobalEntity.h
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/13.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "VIPProtocol.h"

typedef enum : NSUInteger {
    MODULE_LOGIN,
    MODULE_MAIN,
} ModuleId;

extern NSString *GetModuleId(ModuleId moduleId);



//============ Login Module Entity Define =======================

@interface LoginRequest : NSObject <Request>
@property(nonatomic, strong) NSString *username;
@property(nonatomic, strong) NSString *password;
@end

@interface LoginResponse : NSObject <Response>
@property(nonatomic, assign) BOOL isLoginSuccess;
@property(nonatomic, strong) NSString *errmsg;
@property(nonatomic, strong) NSString *nikeName;
@end

@interface LoginViewModel : NSObject <ViewModel>
@property(nonatomic, strong) NSString *tipText;
@property(nonatomic, strong) NSString *usernameText;
@property(nonatomic, strong) NSString *passwordText;
@end


//============ Main Module Entity Define =======================

typedef enum : NSUInteger {
    MAIN_REQUEST_BACK,
} MAIN_REQUEST_CASE;

typedef enum : NSUInteger {
    MAIN_RESPONSE_BACK,
} MAIN_RESPONSE_CASE;

@interface MainRequest : NSObject <Request>
@property(nonatomic, assign) MAIN_REQUEST_CASE eCase;
@end

@interface MainResponse : NSObject <Response>
@property(nonatomic, assign) MAIN_RESPONSE_CASE eCase;
@end


