//
//  ViewController.m
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/10.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import "LoginView.h"
#import "GlobalEntity.h"

@interface LoginView() <UITextFieldDelegate>

@property (strong, nonatomic) NSDictionary *ctxDict;

@end


@implementation LoginView

- (void)viewDidLoad {
    [super viewDidLoad];
    self.usernameTf.delegate = self;
    self.passwordTf.delegate = self;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.errtipsLb.text = _ctxDict[@"ctx"];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)onclick:(id)sender {
    NSLog(@"login button click .... ");

    LoginRequest *req = [[LoginRequest alloc] init];
    req.username = self.usernameTf.text;
    req.password = self.passwordTf.text;
    
    [self.interactor refresh:req];
}

#pragma mark -- Presenter2ViewProtocol

- (void)passParams:(NSDictionary *)info
{
    //从上一个页面传过来的数据
    NSLog(@"params:%@",info);
    self.ctxDict = info;
}

#pragma mark -- Presenter2ViewProtocol
- (void)display:(id<ViewModel>)vm;
{
    LoginViewModel *ovm = (LoginViewModel *)vm;
    self.errtipsLb.text = ovm.tipText;
    self.usernameTf.text = ovm.usernameText;
    self.passwordTf.text = ovm.passwordText;
}


@end
