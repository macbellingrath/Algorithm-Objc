//
//  TwoSum.m
//  Algorithm-Objc
//
//  Created by Mac Bellingrath on 9/27/18.
//  Copyright © 2018 MB. All rights reserved.
//

#import "TwoSum.h"

@implementation TwoSum

+ (void)run {
    TwoSum *solution = TwoSum.new;
    NSArray *nums = [NSArray arrayWithObjects:@1, @2, @4, @6, nil];
    NSNumber *target = [[NSNumber alloc] initWithInt:10];
    NSArray *answer = [solution twoSum:nums target:target];
    NSLog(@"%@", answer);
}

-(NSArray *)twoSum:(NSArray *)nums target:(NSNumber *)target {
    NSMutableDictionary<NSNumber *, NSNumber *> *map = NSMutableDictionary.new;

    for (NSInteger i=0; i<nums.count; i++) {
        NSNumber *num = (NSNumber *)[nums objectAtIndex:i];
        NSNumber *complement = [NSNumber numberWithInteger:([target integerValue] - [num integerValue])];

        NSNumber *value = [map valueForKey: complement.stringValue];
        if (value) {
            return [[NSArray alloc] initWithObjects: value, [NSNumber numberWithInteger:i], nil];
        }

        [map setValue: [NSNumber numberWithInteger:i] forKey: num.stringValue];
    }

    return NSArray.new;
}
@end
