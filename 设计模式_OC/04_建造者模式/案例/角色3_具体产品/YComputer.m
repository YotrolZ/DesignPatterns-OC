//
//  YComputer.m
//  04_建造者模式
//
//  Created by Sunshine on 2017/12/19.
//  Copyright © 2017年 YotrolZ. All rights reserved.
//

#import "YComputer.h"

@implementation YComputer

- (void)show {
    NSLog(@"<<<<电脑的配置单>>>>");
    NSLog(@"主板:  %@", self.mainboard);
    NSLog(@"CPU:  %@", self.cpu);
    NSLog(@"GPU:  %@", self.gpu);
    NSLog(@"内存:  %@", self.memoryDisk);
    NSLog(@"硬盘:  %@", self.hardDisk);
    NSLog(@"显示器: %@\n", self.display);
}

@end
