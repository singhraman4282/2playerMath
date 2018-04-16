//
//  PlayerManager.h
//  2PlayerMath
//
//  Created by Raman Singh on 2018-04-16.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
@interface PlayerManager : NSObject
@property (nonatomic) Player *currentPlayer;
@property (nonatomic) NSArray *bothPlayers;


@end
