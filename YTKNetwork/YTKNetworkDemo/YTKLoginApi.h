//
//  YTKLoginApi.h
//  YTKNetwork
//
//  Created by Stephanie on 2018/8/12.
//  Copyright © 2018年 Stephanie. All rights reserved.
//

#import "YTKRequest.h"

@interface YTKLoginApi : YTKRequest

- (instancetype)initWithMobile:(NSString *)mobile
                      userName:(NSString *)userName
                      passWord:(NSString *)passWord;

@end
