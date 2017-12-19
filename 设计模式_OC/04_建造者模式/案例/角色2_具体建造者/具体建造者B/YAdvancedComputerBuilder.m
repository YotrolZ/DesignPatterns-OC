//
//  YAdvancedComputerBuilder.m
//  04_建造者模式
//
//  Created by Sunshine on 2017/12/19.
//  Copyright © 2017年 YotrolZ. All rights reserved.
//

#import "YAdvancedComputerBuilder.h"

@implementation YAdvancedComputerBuilder
{
    YComputer *_computer;
}

- (instancetype)init {
    if (self = [super init]) {
        _computer = [[YComputer alloc] init];
    }
    return self;
}

/** 构建主板 */
- (void)buildMainboard {
    _computer.mainboard = @"技嘉 X299 UD4主板";
}

/** 构建处理器 */
- (void)buildCPU {
    _computer.cpu = @"intel i9处理器";
}

/** 构建显卡 */
- (void)buildGPU {
    _computer.gpu = @"GTX1080显卡";
}

/** 构建内存 */
- (void)buildMemoryDisk {
    _computer.memoryDisk = @"金士顿 16G内存";
}

/** 构建硬盘 */
- (void)buildHardDisk {
    _computer.hardDisk = @"1T 固态硬盘";
}

/** 构建显示器 */
- (void)buildDisplay {
    _computer.display = @"27存 4K显示器";
}

- (YComputer *)getBuidResult {
    return _computer;
}

@end
