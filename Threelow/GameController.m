//
//  GameController.m
//  Threelow
//
//  Created by Kevin Cleathero on 2017-05-31.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        Dice *rand1 = [[Dice alloc] init];
        Dice *rand2 = [[Dice alloc] init];
        Dice *rand3 = [[Dice alloc] init];
        Dice *rand4 = [[Dice alloc] init];
        Dice *rand5 = [[Dice alloc] init];
        
        _dice = [NSArray arrayWithObjects:rand1, rand2, rand3, rand4, rand5, nil];
        [self randomizeArrayValues];
        _hold = [[NSMutableSet alloc] init];

    }
    return self;
}

-(void)randomizeArrayValues{
    for(Dice *die in self.dice){
        [die randomizeCurrentValue];
    }
}

-(void)holdDie:(NSNumber *)holdNumber{
    
    //NSNumber *val = [NSNumber numberWithInteger:holdNumber];
    [self.hold addObject:holdNumber];
}

-(void)printArray{
    for(Dice *die in self.dice){
        NSLog(@"%@ ", die.currentValue);
    }
}

@end
