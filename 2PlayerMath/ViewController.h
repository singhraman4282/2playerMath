//
//  ViewController.h
//  2PlayerMath
//
//  Created by Raman Singh on 2018-04-16.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayerManager.h"
#import "QuestionManager.h"

@interface ViewController : UIViewController

@property (nonatomic) PlayerManager *plaMan;
@property (nonatomic) Player *localCP;

@end

