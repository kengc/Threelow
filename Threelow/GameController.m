//
//  GameController.m
//  Threelow
//
//  Created by Kevin Cleathero on 2017-05-31.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@interface GameController()
    @property (nonatomic) NSMutableArray *dice;
    @property (nonatomic) NSMutableSet *hold;
@end


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
        
        _dice = [NSMutableArray arrayWithObjects:rand1, rand2, rand3, rand4, rand5, nil];
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
    //index passed in, so have to scan mutablearray
    //retrieve value by passed in index
    //add to set
    //remove from array
    
    NSInteger newHold = [holdNumber integerValue];
    Dice *dieRoll = [self.dice objectAtIndex:newHold];
    //NSLog(@"numberOut: %@", dieRoll.currentValue);
    
    [self.hold addObject:dieRoll.currentValue];
    
    [self.dice removeObjectAtIndex:newHold];
    //NSLog(@"array count: %lu", (unsigned long)self.dice.count);
    
}

-(void)printHoldSet{
    //NSNumber held = 0;
    
    for(NSMutableSet *hold in self.hold){
        NSLog(@"numbers held [%@]", hold);
    }
    //NSLog(@"numbers held [%@, ]", hold);
}

-(void)printArray{
    for(Dice *die in self.dice){
        //NSLog(@"%@ ", die.currentValue);
        NSLog(@"%@ ", die.currentValueSymbol);
    }
}

@end
