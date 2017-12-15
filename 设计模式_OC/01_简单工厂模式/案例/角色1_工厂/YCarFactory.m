//
//  YCarFactory.m
//  01_简单工厂模式
//
//  Created by Sunshine on 2017/12/15.
//  Copyright © 2017年 YotrolZ. All rights reserved.
//

#import "YCarFactory.h"
#import "YAudi.h"
#import "YBenz.h"
#import "YLandRover.h"

@implementation YCarFactory
+ (id<YCar>)creatCarWithCarType:(YCarType)carType {
    switch (carType) {
        case YCarTypeAudi:
            return [[YAudi alloc] init];
            break;
        case YCarTypeBenz:
            return [[YBenz alloc] init];
            break;
        case YCarTypeLandRover:
            return [[YLandRover alloc] init];
            break;
            
        default:
            return nil;
            break;
    }
}
@end
