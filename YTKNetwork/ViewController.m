//
//  ViewController.m
//  YTKNetwork
//
//  Created by Stephanie on 2018/8/12.
//  Copyright © 2018年 Stephanie. All rights reserved.
//

#import "ViewController.h"

#import "YTKLoginApi.h"
#import <YTKChainRequest.h>

@interface ViewController () <YTKRequestDelegate>
@property (weak, nonatomic) IBOutlet UITextField *userNameTF;
@property (weak, nonatomic) IBOutlet UITextField *userPassWordTF;

@end


@implementation ViewController

#pragma mark- LifeCicle

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark- SetUpView

#pragma mark- EventRespone

- (IBAction)logInAction:(UIButton *)sender {
    
    YTKLoginApi* loginApi = [[YTKLoginApi alloc]initWithMobile:@"13663788157" userName:@"13663788157" passWord:@"123456"];
    //loginApi.delegate= self;
    [loginApi startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        NSLog(@"登录成功! ======%@",request.currentRequest.allHTTPHeaderFields);    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        NSLog(@"======%@",request.currentRequest.allHTTPHeaderFields);
        NSLog(@"++++++%@",request.response.allHeaderFields);
    }];
    
    
}

#pragma mark- CustomDelegateMethod

#pragma mark- YTKRequestDelegate

- (void)requestFinished:(__kindof YTKBaseRequest *)request {
    
}
- (void)requestFailed:(__kindof YTKBaseRequest *)request {
    
}

#pragma mark- GetterAndSetter

#pragma mark- PrivateMethod



@end
