//
//  QuestionManager.h
//  2PlayerMath
//
//  Created by Raman Singh on 2018-04-16.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

-(Question *)outputQuestion;
-(void)print;
@property (nonatomic) NSString *qString;
@property (nonatomic) int recievedAnswer;



@end
