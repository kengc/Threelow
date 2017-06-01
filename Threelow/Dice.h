//
//  Dice.h
//  Threelow
//
//  Created by Kevin Cleathero on 2017-05-31.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

//It should have a property to store its current value, and a method to randomize that value.
@property (nonatomic) NSNumber *currentValue;
@property (nonatomic) NSString *currentValueSymbol;

-(void)randomizeCurrentValue;
- (NSString *)returnSymbol:(NSNumber *)currentValue;

@end
