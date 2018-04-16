//
//  Question.h
//  2PlayerMath
//
//  Created by Raman Singh on 2018-04-16.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "SubstractionQuestion.h"

@interface Question : NSObject
@property (nonatomic) id delegate;
@property (nonatomic) NSMutableArray *questionTypesArray;
@end
