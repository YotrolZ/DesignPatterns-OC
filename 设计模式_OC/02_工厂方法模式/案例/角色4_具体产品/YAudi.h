//
//  YAudi.h
//  02_工厂方法模式
//
//  Created by Sunshine on 2017/12/15.
//  Copyright © 2017年 YotrolZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YCar.h"

@interface YAudi : NSObject <YCar>
- (void)run;
@end
