//
//  ViewController.m
//  02_工厂方法模式
//
//  Created by Sunshine on 2017/12/15.
//  Copyright © 2017年 YotrolZ. All rights reserved.
//

#import "ViewController.h"
#import "YAudiFactory.h"
#import "YBenzFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    id<YCar> car1 = [YAudiFactory creatCar];
    [car1 run];
    
    id<YCar> car2 = [YBenzFactory creatCar];
    [car2 run];
    
    /*
     总结：
     还记得简单工厂模式YCarFactory工厂类中我们根据外界的参数进行创建我们的具体产品吗？
     + (id<YCar>)creatCarWithCarType:(YCarType)carType;
     如何此时外界需要一辆保时捷的车跑一下，我们就需要修改工厂方法中，添加参数判断，创建保时捷汽车
     
     而在工厂方法模式中
     
     我们仅仅需要添加一个生产保时捷汽车的具体工厂类，别忘记要继承汽车的抽象工厂哦（OC中是遵守抽象汽车工厂协议），根本不需要修改工厂方法。
     例如：
     id<YCar> car3 = [YPorscheFactory creatCar]; // 在其内部创建具体的保时捷汽车
     [car3 run]; // 保时捷汽车跑起来了
     */
}

@end
