//
//  inputHandler.m
//  Threelow
//
//  Created by Kevin Cleathero on 2017-05-31.
//  Copyright © 2017 Kevin Cleathero. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler


+ (NSString *)parseUserInput{
    char inputChars[255];
    
    NSLog(@"action: ");
    fgets(inputChars, 255, stdin);
    
    NSString *inputString = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    
    NSCharacterSet *characterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    
    NSString *trimmed = [inputString stringByTrimmingCharactersInSet:characterSet];
    
    return trimmed;
}


@end
