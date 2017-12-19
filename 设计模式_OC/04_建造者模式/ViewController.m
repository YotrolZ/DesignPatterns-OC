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
    YNormalComputerBuilder *normalBuilder = [[YNormalComputerBuilder alloc] init];
    YAdvancedComputerBuilder *advBuilder = [[YAdvancedComputerBuilder alloc] init];
    
    // <普通电脑>装配、构建
    [director constructWithBuilder:normalBuilder];
    // 具体产品
    YComputer *normalComputer = [normalBuilder getBuidResult];
    // 展示产品
    [normalComputer show];
    
    // <普通电脑>装配、构建
    [director constructWithBuilder:advBuilder];
    // 具体产品
    YComputer *advComputer = [advBuilder getBuidResult];
    // 展示产品
    [advComputer show];
}

@end
