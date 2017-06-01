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
    //@property (nonatomic) NSMutableSet *hold;
    @property (nonatomic) NSMutableArray *hold;
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
    //hold die
    //NSInteger newHold = [holdNumber integerValue];
    //Dice *dieRoll = [self.dice objectAtIndex:newHold];
    
    if([self.hold containsObject:holdNumber]){
        [self.hold removeObject:holdNumber];
    } else {
        [self.hold addObject:holdNumber];
    }
    
    //if the passed in index corrsponds to a number in the set then
//    //we assume to remove it
//    if([self.hold containsObject:holdNumber]){
//        [self.hold removeObject:holdNumber];
//    }else{
//        //[self.hold addObject:dieRoll.currentValue];
//        [self.hold addObject:holdNumber]; //index?
//    }
    //hold die
    //NSInteger newHold = [holdNumber integerValue];
    //Dice *dieRoll = [self.dice objectAtIndex:newHold];
}
-(void)resetDice{
    
}

-(void)printHoldSet{
    NSNumber *held = 0;
    
    for(NSMutableArray *hold in self.hold){
        //held = [self.dice objectAtIndex:(NSUInteger)];
        NSLog(@"numbers held [%@]", hold);
    }
    //NSLog(@"numbers held [%@, ]", hold);
}

-(void)printArray{
    //need to compare array with set to see
    //if what's in the array is in the set
    
    for(Dice *die in self.dice){
        
        if([self.hold containsObject:die.currentValue]){
        
        } else {
            NSLog(@"%@ ", die.currentValueSymbol);
        }
     }
}

@end
