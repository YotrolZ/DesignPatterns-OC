//
//  YComputer.h
//  04_建造者模式
//
//  Created by Sunshine on 2017/12/19.
//  Copyright © 2017年 YotrolZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YComputer : NSObject

@property (nonatomic, copy)NSString *mainboard;  //!< 主板
@property (nonatomic, copy)NSString *cpu;        //!< 处理器
@property (nonatomic, copy)NSString *gpu;        //!< 显卡
@property (nonatomic, copy)NSString *memoryDisk; //!< 内存
@property (nonatomic, copy)NSString *hardDisk;   //!< 硬盘
@property (nonatomic, copy)NSString *display;    //!< 显示器

/** 展示商品 */
- (void)show;

@end
