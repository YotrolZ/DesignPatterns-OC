//
//  YAbsComputerBuilder.h
//  04_建造者模式
//
//  Created by Sunshine on 2017/12/19.
//  Copyright © 2017年 YotrolZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YComputer.h"

@protocol YAbsComputerBuilder <NSObject>

/** 构建主板 */
- (void)buildMainboard;

/** 构建处理器 */
- (void)buildCPU;

/** 构建显卡 */
- (void)buildGPU;

/** 构建内存 */
- (void)buildMemoryDisk;

/** 构建硬盘 */
- (void)buildHardDisk;

/** 构建显示器 */
- (void)buildDisplay;

- (YComputer *)getBuidResult;

@end
