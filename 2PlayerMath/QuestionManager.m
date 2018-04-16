//
//  QuestionManager.m
//  2PlayerMath
//
//  Created by Raman Singh on 2018-04-16.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager
-(Question *)outputQuestion {
    Question *newQues = [[Question alloc] init];
    int a = newQues.questionTypesArray.count;
    int random = arc4random_uniform(a);
    Question *askQuesMode = [Question new];
    askQuesMode.delegate = [newQues.questionTypesArray objectAtIndex:random];
    [askQuesMode.delegate createQuestion];
    NSLog(@"%@", [askQuesMode.delegate whatIs]);
    _qString = [askQuesMode.delegate whatIs];
    int b = [askQuesMode.delegate answer];
    NSLog(@"The answer is %d", b);
    _recievedAnswer = [askQuesMode.delegate answer];
    return newQues;
}

-(void) print {
    NSLog(@"I work");
}



@end
