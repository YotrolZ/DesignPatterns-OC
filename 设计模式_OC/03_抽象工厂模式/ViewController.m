//
//  ViewController.m
//  03_抽象工厂模式
//
//  Created by Sunshine on 2017/12/16.
//  Copyright © 2017年 YotrolZ. All rights reserved.
//

#import "ViewController.h"
#import "YAudiCarFactory.h"
#import "YBenzCarFactory.h"
#import "YSuvCar.h"
#import "YMpvCar.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 奥迪SUV
    id<YSuvCar> audiSuv = [YAudiCarFactory creatSuvCar];
    [audiSuv suvRun];
    // 奥迪MPV
    id<YMpvCar> audiMpv = [YAudiCarFactory creatMpvCar];
    [audiMpv mpvRun];
    
    
    // 奔驰SUV
    id<YSuvCar> benzSuv = [YBenzCarFactory creatSuvCar];
    [benzSuv suvRun];
    // 奔驰MPV
    id<YMpvCar> benzMpv = [YBenzCarFactory creatMpvCar];
    [benzMpv mpvRun];
}

@end
