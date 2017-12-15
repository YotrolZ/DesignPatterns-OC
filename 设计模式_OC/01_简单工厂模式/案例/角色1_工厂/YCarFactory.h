//
//  YCarFactory.h
//  01_简单工厂模式
//
//  Created by Sunshine on 2017/12/15.
//  Copyright © 2017年 YotrolZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YCar.h"

typedef NS_ENUM(NSInteger, YCarType) {
    YCarTypeAudi,
    YCarTypeBenz,
    YCarTypeLandRover,
};

@interface YCarFactory : NSObject
+ (id<YCar>)creatCarWithCarType:(YCarType)carType;
@end
