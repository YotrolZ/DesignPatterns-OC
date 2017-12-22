//
//  YSingletonA.m
//  05_单例模式
//
//  Created by Sunshine on 2017/12/22.
//  Copyright © 2017年 YotrolZ. All rights reserved.
//

#import "YSingletonA.h"

@implementation YSingletonA

static YSingletonA *_instance = nil;
+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[[self class] alloc] init];
    });
    return _instance;
}

@end
