//
//  YCarAbsFactory.h
//  03_抽象工厂模式
//
//  Created by Sunshine on 2017/12/16.
//  Copyright © 2017年 YotrolZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YSuvCar.h"
#import "YMpvCar.h"

@protocol YCarAbsFactory <NSObject>

+ (id<YSuvCar>)creatSuvCar;
+ (id<YMpvCar>)creatMpvCar;

@end
