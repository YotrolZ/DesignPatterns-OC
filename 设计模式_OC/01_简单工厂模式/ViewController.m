//
//  ViewController.m
//  01_简单工厂模式
//
//  Created by Sunshine on 2017/12/15.
//  Copyright © 2017年 YotrolZ. All rights reserved.
//

#import "ViewController.h"
#import "YCarFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    id<YCar> car = [YCarFactory creatCarWithCarType:YCarTypeBenz];
    [car run];
}

@end
