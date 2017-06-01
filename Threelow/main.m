//
//  main.m
//  Threelow
//
//  Created by Kevin Cleathero on 2017-05-31.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL loop = YES;
    
        GameController *gameController = [[GameController alloc] init];
        
        do{
            
            NSString *input = [InputHandler parseUserInput];
            
            
            if([input isEqualToString:@"roll"]){
            
                [gameController printArray];
                [gameController randomizeArrayValues];
                NSNumber *holdValue = [InputHandler parseHoldDieInput];
                [gameController holdDie:holdValue];
                [gameController printHoldSet];
                
            }
        }while(loop);
        
    }
    return 0;
}
