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
    

}
-(void)resetDice{
    if(self.hold){
        [self.hold removeAllObjects];
    }
}

-(void)printStats{
    [self printHoldSet];
    NSLog(@"Score: %ld", (long)[self calculateScore]);
}

-(void)printHoldSet{
    
    for(NSMutableArray *hold in self.hold){
        //held = [self.dice objectAtIndex:(NSUInteger)];
        NSLog(@"Index held [%@]", hold);
    }
    //NSLog(@"numbers held [%@, ]", hold);
}

-(NSInteger)calculateScore{
    
    NSInteger score = 0;
    
    if(self.hold){
        for(NSNumber *num in self.hold){
            score += [num integerValue];
        }
    }
    return score;
}

-(void)printArray{
    //need to compare array with set to see
    //if what's in the array is in the set
    NSNumber *counter;
    int zero = 0;
    counter = [NSNumber numberWithInt:zero];
    
    //have to not show number based on index(s) in hold array
    for(Dice *die in self.dice){
        if([self.hold containsObject:counter]){
          //don't display
        } else {
            NSLog(@"%@ ", die.currentValueSymbol);
            //NSLog(@"%@ ", die.currentValue);
        }
        counter = [NSNumber numberWithInt:[counter intValue] + 1];
     }
}

@end
