//
//  Dice.m
//  Threelow
//
//  Created by Kevin Cleathero on 2017-05-31.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(void)randomizeCurrentValue{
    self.currentValue = [NSNumber numberWithUnsignedInt:arc4random_uniform(7)];
}

@end
