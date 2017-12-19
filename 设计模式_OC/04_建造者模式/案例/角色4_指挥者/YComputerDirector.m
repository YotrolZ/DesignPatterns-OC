//
//  YComputerDirector.m
//  04_建造者模式
//
//  Created by Sunshine on 2017/12/19.
//  Copyright © 2017年 YotrolZ. All rights reserved.
//

#import "YComputerDirector.h"

@implementation YComputerDirector

- (void)constructWithBuilder:(id<YAbsComputerBuilder>)builder {
    [builder buildMainboard];
    [builder buildCPU];
    [builder buildGPU];
    [builder buildMemoryDisk];
    [builder buildHardDisk];
    [builder buildDisplay];
}

@end
