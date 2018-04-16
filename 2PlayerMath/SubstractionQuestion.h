//
//  SubstractionQuestion.h
//  2PlayerMath
//
//  Created by Raman Singh on 2018-04-16.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SubstractionQuestion : NSObject
@property (nonatomic) int a;
@property (nonatomic) int b;
@property (nonatomic) int c;
@property (nonatomic) NSString *whatIs;
-(int)answer;
-(void)createQuestion;
@end
