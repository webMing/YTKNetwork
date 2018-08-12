//
//  YTKLoginApi.m
//  YTKNetwork
//
//  Created by Stephanie on 2018/8/12.
//  Copyright © 2018年 Stephanie. All rights reserved.
//

#import "YTKLoginApi.h"

@interface YTKLoginApi () {
    NSString *_userName;
    NSString *_mobile;
    NSString *_passWord;
}

@end

@implementation YTKLoginApi

- (instancetype)initWithMobile:(NSString *)mobile
                      userName:(NSString *)userName
                      passWord:(NSString *)passWord {
    if (self = [super init]) {
        _userName = userName;
        _mobile   = mobile;
        _passWord = passWord;
    }
    return self;
}

//- (NSString *)requestUrl {
//    // “ http://www.yuantiku.com ” 在 YTKNetworkConfig 中设置，这里只填除去域名剩余的网址信息,因为这里MethodName包含在请求参数中所以这个requestUrl 返回为空;
//    return @"";
//}

- (YTKRequestMethod)requestMethod {
   return  YTKRequestMethodPOST;
}

//自定义requestHeader内容
//- (nullable NSDictionary<NSString *, NSString *> *)requestHeaderFieldValueDictionary {
//    return @{
//             @"Content-Type":@"application/json;charset=utf-8"
//            };
//}

- (id)requestArgument {
    
    return @{
                @"userName":_userName,
                @"mobile":_mobile,
                @"pwd":_passWord,
                @"method":@"zte.memberService.member.login"
            };
}

// 父类默认实现的是YTKResponseSerializerTypeJSON 由于返回的数据json数据有问题,就返回NSData
// 如果返回的数据 Status Code: 200 ，但是走失败回调基本可以断定是因为 返回的数据格式无法解析造成的
//- (YTKResponseSerializerType)responseSerializerType {
//    return YTKResponseSerializerTypeHTTP;
//}

@end
