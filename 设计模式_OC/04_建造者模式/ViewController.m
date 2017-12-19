//
//  ViewController.m
//  04_建造者模式
//
//  Created by Sunshine on 2017/12/19.
//  Copyright © 2017年 YotrolZ. All rights reserved.
//

#import "ViewController.h"
#import "YComputerDirector.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 指挥者
    YComputerDirector *director = [[YComputerDirector alloc] init];
    
    // 建造者
    YNormalComputerBuilder *builder1 = [[YNormalComputerBuilder alloc] init];
    YAdvancedComputerBuilder *builder2 = [[YAdvancedComputerBuilder alloc] init];
    
    // 装配、构建
    [director constructWithBuilder:builder1];
    // 具体产品
    YComputer *computer1 = [builder1 getBuidResult];
    [computer1 show];
    
    // 装配、构建
    [director constructWithBuilder:builder2];
    // 具体产品
    YComputer *computer2 = [builder2 getBuidResult];
    [computer2 show];
    
}

@end
