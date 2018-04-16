//
//  Question.m
//  2PlayerMath
//
//  Created by Raman Singh on 2018-04-16.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "Question.h"

@implementation Question
- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionTypesArray = [NSMutableArray new];
        AdditionQuestion *addQues = [AdditionQuestion new];
        SubstractionQuestion *subQues = [SubstractionQuestion new];
        [_questionTypesArray addObject: addQues];
        [_questionTypesArray addObject: subQues];
        
    }
    return self;
}
@end
