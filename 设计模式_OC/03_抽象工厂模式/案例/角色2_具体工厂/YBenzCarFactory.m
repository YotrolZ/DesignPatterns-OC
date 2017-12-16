//
//  YBenzCarFactory.m
//  03_抽象工厂模式
//
//  Created by Sunshine on 2017/12/16.
//  Copyright © 2017年 YotrolZ. All rights reserved.
//

#import "YBenzCarFactory.h"
#import "YBenzSuvCar.h"
#import "YBenzMpvCar.h"

@implementation YBenzCarFactory
+ (id<YSuvCar>)creatSuvCar {
    return [[YBenzSuvCar alloc] init];
}
+ (id<YMpvCar>)creatMpvCar {
    return [[YBenzMpvCar alloc] init];
}
@end
