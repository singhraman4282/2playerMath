//
//  AdditionQuestion.m
//  2PlayerMath
//
//  Created by Raman Singh on 2018-04-16.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

-(void)createQuestion {
    _a = arc4random_uniform(21) + 1;
    _b = arc4random_uniform(21) + 1;
    _whatIs = [NSString stringWithFormat:@"What is %d + %d?", _a, _b];
}




-(int)answer {
    
    return _a + _b;
}


@end
