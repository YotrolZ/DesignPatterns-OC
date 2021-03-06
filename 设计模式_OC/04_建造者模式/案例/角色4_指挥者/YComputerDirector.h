//
//  YComputerDirector.h
//  04_建造者模式
//
//  Created by Sunshine on 2017/12/19.
//  Copyright © 2017年 YotrolZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YNormalComputerBuilder.h"
#import "YAdvancedComputerBuilder.h"

@interface YComputerDirector : NSObject

- (void)constructWithBuilder:(id <YAbsComputerBuilder>)builder;

@end
