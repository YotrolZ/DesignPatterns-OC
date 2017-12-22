//
//  YSingletonB.h
//  05_单例模式
//
//  Created by Sunshine on 2017/12/22.
//  Copyright © 2017年 YotrolZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YSingletonB : NSObject <NSCopying, NSMutableCopying>

@property (nonatomic, copy)NSArray *name;

+ (instancetype)sharedInstance;
@end
