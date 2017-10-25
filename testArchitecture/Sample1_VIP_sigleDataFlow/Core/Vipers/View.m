//
//  View.m
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/13.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import "View.h"

@implementation View

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
}

#pragma mark -- Presenter2ViewProtocol
- (void)passParams:(NSDictionary *)info
{
    
}

#pragma mark -- Presenter2ViewProtocol
- (void)display:(id<ViewModel>)vm;
{
    NSAssert(NO, ([NSString stringWithFormat:@"[%@] should be implemented in <%@>!", NSStringFromSelector(_cmd), NSStringFromClass(self.class)]));
}

@end
