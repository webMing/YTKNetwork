//
//  AppDelegate+Configure.m
//  YTKNetwork
//
//  Created by Stephanie on 2018/8/12.
//Copyright © 2018年 Stephanie. All rights reserved.
//

#import "AppDelegate+Configure.h"

#import <YTKNetwork.h>
#import <YTKNetworkAgent.h>
#import <AFNetworking.h>

#define ImgBaseReleaseAdreess    @"www.stephanie.com"
#define ImgBaseDebugAdreess      @"www.stephanie.com"

#define CommonBaseReleaseAdreess  @"https://m.stephe.com.cn"
#define CommonBaseDebugAdreess    @"https://m.stephe.com.cn"

#ifdef DEBUG

//#define CommonUrl  CommonBaseDebugAdreess
#define CommonUrl  CommonBaseReleaseAdreess

#else

#define CommonUrl  CommonBaseReleaseAdreess

#endif

@implementation AppDelegate (Configure)

- (void)configureYTKNetwork {
    YTKNetworkConfig *config = [YTKNetworkConfig sharedConfig];
    config.debugLogEnabled = YES;
    config.baseUrl = CommonUrl;
    
    /*
    配置agent对象
    YTKNetworkAgent* agent = [YTKNetworkAgent sharedAgent];
    AFHTTPSessionManager* manager = [agent valueForKey:@"_manager"];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html",nil];
    [agent setValue: forKeyPath:@"manager.responseSerializer.acceptableContentTypes"];
     */
    
}
@end
