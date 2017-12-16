//
//  YAudiCarFactory.m
//  03_抽象工厂模式
//
//  Created by Sunshine on 2017/12/16.
//  Copyright © 2017年 YotrolZ. All rights reserved.
//

#import "YAudiCarFactory.h"
#import "YAudiSuvCar.h"
#import "YAudiMpvCar.h"

@implementation YAudiCarFactory
+ (id<YSuvCar>)creatSuvCar {
    return [[YAudiSuvCar alloc] init];
}
+ (id<YMpvCar>)creatMpvCar {
    return [[YAudiMpvCar alloc] init];
}
@end
