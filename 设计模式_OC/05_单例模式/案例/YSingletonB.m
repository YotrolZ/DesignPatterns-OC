//
//  YSingletonB.m
//  05_单例模式
//
//  Created by Sunshine on 2017/12/22.
//  Copyright © 2017年 YotrolZ. All rights reserved.
//

#import "YSingletonB.h"

@implementation YSingletonB

static YSingletonB *_instance = nil;
+ (instancetype)sharedInstance {
    return [[self alloc] init];
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    return _instance;
}

- (id)copyWithZone:(NSZone *)zone {
    return _instance;
}
- (id)mutableCopyWithZone:(NSZone *)zone {
    return _instance;
}
@end
