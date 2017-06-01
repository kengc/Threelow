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
    //⚀ ⚁ ⚂ ⚃ ⚄ ⚅
    self.currentValue = [NSNumber numberWithUnsignedInt:arc4random_uniform(5) + 1];
    self.currentValueSymbol = [self returnSymbol:self.currentValue];
}

- (NSString *)returnSymbol:(NSNumber *)currentValue{
    
    NSString *symbol;
    
    switch ([currentValue integerValue]) {
        case 1:{
            symbol = @"⚀";
            return symbol;
        }
        case 2:{
            symbol = @"⚁";
            return symbol;
        }
        case 3:{
            symbol = @"⚂";
            return symbol;
        }
        case 4:{
            symbol = @"⚃";
            return symbol;
        }
        case 5:{
            symbol = @"⚄";
            return symbol;
        }
        case 6:{
            symbol = @"⚅";
            return symbol;
        }

            break;
            
        default:
            break;
    }

    return @"";
    
}


@end
