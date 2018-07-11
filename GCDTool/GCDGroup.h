//
//  GCDGroup.h
//  FengZhuangP
//
//  Created by apple on 2018/6/25.
//  Copyright © 2018年 ZL.com. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface GCDGroup : NSObject

@property (nonatomic, readonly) dispatch_group_t dispatchGroup;

#pragma 初始化
- (instancetype)init;

#pragma mark - 用法
- (void)enter;
- (void)leave;
- (void)wait;
- (BOOL)wait:(int64_t)delta;

@end
