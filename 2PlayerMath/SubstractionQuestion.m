//
//  SubstractionQuestion.m
//  2PlayerMath
//
//  Created by Raman Singh on 2018-04-16.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "SubstractionQuestion.h"

@implementation SubstractionQuestion
-(void)createQuestion {
    _a = arc4random_uniform(21) + 1;
    _b = arc4random_uniform(21) + 1;
    _whatIs = [NSString stringWithFormat:@"What is %d - %d?", _a, _b];
}




-(int)answer {
    if (_a > _b) {
    return _a - _b;
    }
    else {
    return _b - _a;
    }
}

@end
