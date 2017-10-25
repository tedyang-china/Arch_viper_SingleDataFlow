//
//  ViewController.h
//  testArchitecture
//
//  Created by tedyang(阳诚) on 2017/10/10.
//  Copyright © 2017年 tedyang(阳诚). All rights reserved.
//

#import <UIKit/UIKit.h>
#import "View.h"

@interface LoginView : View

@property (weak, nonatomic) IBOutlet UILabel *errtipsLb;
@property(nonatomic,weak) IBOutlet UITextField *usernameTf;
@property (weak, nonatomic) IBOutlet UITextField *passwordTf;

@end

