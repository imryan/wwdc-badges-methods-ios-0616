//
//  FISAppDelegate.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}

- (NSString *)badgeForSpeaker:(NSString *)speaker {
    return [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *formattedSpeakers = [NSMutableArray array];
    for (NSString *speaker in speakers) {
        [formattedSpeakers addObject:[self badgeForSpeaker:speaker]];
    }
    
    return formattedSpeakers;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    NSMutableArray *formattedRooms = [NSMutableArray array];
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString *speaker = speakers[i];
        [formattedRooms addObject:[NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speaker, i + 1]];
    }
    
    return formattedRooms;
}

@end
