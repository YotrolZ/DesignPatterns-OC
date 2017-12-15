//
//  YAudiFactory.m
//  02_工厂方法模式
//
//  Created by Sunshine on 2017/12/15.
//  Copyright © 2017年 YotrolZ. All rights reserved.
//

#import "YAudiFactory.h"
#import "YAudi.h"
@implementation YAudiFactory
+ (id<YCar>)creatCar {
    return [[YAudi alloc] init];
}
@end
