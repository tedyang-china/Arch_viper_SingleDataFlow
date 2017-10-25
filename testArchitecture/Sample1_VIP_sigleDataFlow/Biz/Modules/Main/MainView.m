//
//  MainView.m
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/10.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import "MainView.h"
#import "GlobalEntity.h"

@interface MainView()

@property (strong, nonatomic) NSDictionary *ctxDict;

@end

@implementation MainView

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.ctxLb.text = self.ctxDict[@"ctx"];
}

- (IBAction)goBack:(id)sender {
    NSLog(@"go back .... ");
    MainRequest *req = [MainRequest new];
    req.eCase = MAIN_REQUEST_BACK;
    [self.interactor refresh:req];
}

#pragma mark -- Presenter2ViewProtocol

- (void)passParams:(NSDictionary *)info
{
    //从上一个页面传过来的数据
    NSLog(@"params:%@",info);
    self.ctxDict = info;
}


- (void)display:(id<ViewModel>)vm;
{
//    MainViewModel *ovm = (MainViewModel *)vm;
    
}


@end
