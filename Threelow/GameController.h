//
//  GameController.h
//  Threelow
//
//  Created by Kevin Cleathero on 2017-05-31.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameController : NSObject

@property (nonatomic) NSArray *dice;
@property (nonatomic) NSMutableSet *hold;

-(void)holdDie:(NSNumber *)holdNumber;
-(void)printArray;
-(void)randomizeArrayValues;

@end
