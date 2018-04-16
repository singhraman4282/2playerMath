//
//  PlayerManager.m
//  2PlayerMath
//
//  Created by Raman Singh on 2018-04-16.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "PlayerManager.h"

@implementation PlayerManager
- (instancetype)init
{
    self = [super init];
    if (self) {
        Player *player1 = [Player new];
        Player *player2 = [Player new];
        
        _bothPlayers = [[NSArray alloc] initWithObjects:player1, player2, nil];
    }
    return self;
}
@end
