//
//  UIDevice+Hardware.m
//  Picks
//
//  Created by Joe on 8/12/13.
//  Copyright (c) 2013 mergesort. All rights reserved.
//

#import "UIDevice+Hardware.h"
#include <sys/sysctl.h>


@implementation UIDevice (Hardware)

+ (NSInteger)numberOfCores
{
    size_t len;
    unsigned int cpuCount;
    
    len = sizeof(cpuCount);
    sysctlbyname("hw.ncpu", &cpuCount, &len, NULL, 0);
    
    return cpuCount;    
}

@end
