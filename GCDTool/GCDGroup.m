//
//  GCDGroup.m
//  FengZhuangP
//
//  Created by apple on 2018/6/25.
//  Copyright © 2018年 ZL.com. All rights reserved.
//


#import "GCDGroup.h"

@interface GCDGroup ()

@property (nonatomic, readwrite) dispatch_group_t dispatchGroup;

@end

@implementation GCDGroup

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        
        self.dispatchGroup = dispatch_group_create();
    }
    
    return self;
}

- (void)enter {
    
    dispatch_group_enter(self.dispatchGroup);
}

- (void)leave {
    
    dispatch_group_leave(self.dispatchGroup);
}

- (void)wait {
    
    dispatch_group_wait(self.dispatchGroup, DISPATCH_TIME_FOREVER);
}

- (BOOL)wait:(int64_t)delta {
    
    return dispatch_group_wait(self.dispatchGroup, dispatch_time(DISPATCH_TIME_NOW, delta)) == 0;
}

- (void)dealloc{
    self.dispatchGroup = nil;
}

@end
