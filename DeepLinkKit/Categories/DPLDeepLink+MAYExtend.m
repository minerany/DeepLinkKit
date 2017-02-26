//
// Created by miner on 2017/2/26.
// Copyright (c) 2017 Button, Inc. All rights reserved.
//

#import "DPLDeepLink+MAYExtend.h"
#import <objc/runtime.h>

@implementation DPLDeepLink (MAYExtend)

- (void)setRoute:(NSString *)route {

    objc_setAssociatedObject(self, @selector(route), route, OBJC_ASSOCIATION_COPY);
}

- (NSString *)route {
    return objc_getAssociatedObject(self, _cmd);
}
@end