//
//  YBenzFactory.m
//  02_工厂方法模式
//
//  Created by Sunshine on 2017/12/15.
//  Copyright © 2017年 YotrolZ. All rights reserved.
//

#import "YBenzFactory.h"
#import "YBenz.h"

@implementation YBenzFactory
+ (id<YCar>)creatCar {
    return [[YBenz alloc] init];
}
@end
