//
//  AppDelegate.m
//  IntroducingFuctions-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    NSString *myName = @"Jordan Nelson";
    
    [self printIntroductions:myName];
    [self countDownUntilIntroduction:4];
    
    return YES;
}

-(void)printIntroductions:(NSString*)name {
    NSString *introduction;
    NSString *japaneseIntroduction;
    introduction = [NSString stringWithFormat:@"My name is %@", name];
    japaneseIntroduction = [introduction stringByAppendingString:@" to moushimasu"];
    
    NSLog(@"%@",introduction);
    NSLog(@"%@",japaneseIntroduction);
}

-(void)countDownUntilIntroduction:(int)numberOfDays {
    if(numberOfDays == 0){
        NSLog(@"The time has come");
    }
    else{
        NSLog(@"%d days left until introductions.", numberOfDays);
        int oneLessDay = numberOfDays - 1;
        [self countDownUntilIntroduction:oneLessDay];
    }
}

@end
