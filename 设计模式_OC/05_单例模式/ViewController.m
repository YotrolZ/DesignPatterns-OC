//
//  ViewController.m
//  05_单例模式
//
//  Created by Sunshine on 2017/12/22.
//  Copyright © 2017年 YotrolZ. All rights reserved.
//

#import "ViewController.h"
#import "YSingletonA.h"
#import "YSingletonB.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self testSingletonB];
}

- (void)testSingletonA {
    
    YSingletonA *singleton1 = [YSingletonA sharedInstance];
    NSLog(@"%@", singleton1);
    YSingletonA *singleton2 = [YSingletonA sharedInstance];
    NSLog(@"%@", singleton2);
    
    YSingletonA *singleton3 = [[YSingletonA alloc] init];
    NSLog(@"%@", singleton3);
    YSingletonA *singleton4 = [[YSingletonA alloc] init];
    NSLog(@"%@", singleton4);
    
    YSingletonA *singleton5 = [YSingletonA new];
    NSLog(@"%@", singleton5);
    YSingletonA *singleton6 = [YSingletonA new];
    NSLog(@"%@", singleton6);
    
    /*
     运行结果：
     <YSingletonA: 0x60000000b550>
     <YSingletonA: 0x60000000b550>
     
     <YSingletonA: 0x60c00000bc30>
     <YSingletonA: 0x60400000b440>
     
     <YSingletonA: 0x60400000b450>
     <YSingletonA: 0x60c00000a9f0>
     
     YSingletonA调用sharedInstance方法可以做到多次创建的实例是同一个
     但是<无法做到>调用原有的init方法或者new方法创建的实例也是同一个
     YSingletonA违背了单例类有且仅有一个实例的定义,或者说做的不够完善
     */
}

- (void)testSingletonB {
    
    YSingletonB *singleton1 = [YSingletonB sharedInstance];
    NSLog(@"%", singleton1);
    YSingletonB *singleton2 = [YSingletonB sharedInstance];
    NSLog(@"%@", singleton2);
    
    YSingletonB *singleton3 = [[YSingletonB alloc] init];
    NSLog(@"%@", singleton3);
    YSingletonB *singleton4 = [[YSingletonB alloc] init];
    NSLog(@"%@", singleton4);
    
    YSingletonB *singleton5 = [YSingletonB new];
    NSLog(@"%@", singleton5);
    YSingletonB *singleton6 = [YSingletonB new];
    NSLog(@"%@", singleton6);
    
    
    YSingletonB *singleton7 = [singleton5 copy];
    NSLog(@"%@", singleton7);
    YSingletonB *singleton8 = [singleton5 mutableCopy];
    NSLog(@"%@", singleton8);
    
    /*
     <YSingletonB: 0x6080000069a0>
     <YSingletonB: 0x6080000069a0>
     
     <YSingletonB: 0x6080000069a0>
     <YSingletonB: 0x6080000069a0>
     
     <YSingletonB: 0x6080000069a0>
     <YSingletonB: 0x6080000069a0>
     
     <YSingletonB: 0x6080000069a0>
     <YSingletonB: 0x6080000069a0>

     可以发现我们调用sharedInstance方法，init方法，new方法，甚至包括copy、mutableCopy方法我们得到的都是用一个实例
     */
    
}

@end
