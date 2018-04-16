//
//  ViewController.m
//  2PlayerMath
//
//  Created by Raman Singh on 2018-04-16.
//  Copyright © 2018 Raman Singh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *p1ScoreLabel;
@property (strong, nonatomic) IBOutlet UILabel *p2ScoreLabel;
@property (strong, nonatomic) IBOutlet UILabel *questionLabel;
@property (strong, nonatomic) IBOutlet UILabel *answerLabel;
@property (strong, nonatomic) IBOutlet UILabel *displayCorrrectAnswer;

@property (strong, nonatomic) IBOutlet UILabel *cpLabel;

@property (nonatomic) NSString *localCurrentPlayer;
@property (nonatomic) int localCurrentScore;
@property (nonatomic) NSMutableString *answerString;
@property (nonatomic) int localCurrentAnswer;




@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _answerString = [NSMutableString new];
    _plaMan = [PlayerManager new];
    if (!_plaMan.currentPlayer) {
        _plaMan.currentPlayer = [_plaMan.bothPlayers objectAtIndex:0];
        NSLog(@"Current player is %d", [_plaMan.bothPlayers indexOfObject:_plaMan.currentPlayer]);
        _localCP = _plaMan.currentPlayer;
        _cpLabel.text = @"Player 1";
    }
    
    
    QuestionManager *nQuesMan = [QuestionManager new];
    [nQuesMan outputQuestion];
    _questionLabel.text = [nQuesMan qString];
    _localCurrentAnswer = [nQuesMan recievedAnswer];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressed1:(id)sender {
    _answerString = [NSMutableString stringWithFormat:@"%@1", _answerString];
    _answerLabel.text = _answerString;
}//1


- (IBAction)pressed2:(id)sender {
    _answerString = [NSMutableString stringWithFormat:@"%@2", _answerString];
    _answerLabel.text = _answerString;
}//2




- (IBAction)pressed3:(id)sender {
    _answerString = [NSMutableString stringWithFormat:@"%@3", _answerString];
    _answerLabel.text = _answerString;
}//3



- (IBAction)pressed4:(id)sender {
    _answerString = [NSMutableString stringWithFormat:@"%@4", _answerString];
    _answerLabel.text = _answerString;
}//4



- (IBAction)pressed5:(id)sender {
    _answerString = [NSMutableString stringWithFormat:@"%@5", _answerString];
    _answerLabel.text = _answerString;
}//5



- (IBAction)pressed6:(id)sender {
    _answerString = [NSMutableString stringWithFormat:@"%@6", _answerString];
    _answerLabel.text = _answerString;
}//6




- (IBAction)pressed7:(id)sender {
    _answerString = [NSMutableString stringWithFormat:@"%@7", _answerString];
    _answerLabel.text = _answerString;
}//7




- (IBAction)pressed8:(id)sender {
    _answerString = [NSMutableString stringWithFormat:@"%@8", _answerString];
    _answerLabel.text = _answerString;
}//8



- (IBAction)pressed9:(id)sender {
    _answerString = [NSMutableString stringWithFormat:@"%@9", _answerString];
    _answerLabel.text = _answerString;
}//9



- (IBAction)pressed0:(id)sender {
    _answerString = [NSMutableString stringWithFormat:@"%@0", _answerString];
    _answerLabel.text = _answerString;
}//0



- (IBAction)pressedEnter:(id)sender {
    
    int currentIndex = [_plaMan.bothPlayers indexOfObject:_plaMan.currentPlayer];
    if (currentIndex == 0) {
        int userAnswer = [_answerString intValue];
        NSLog(@"The user answered %d", userAnswer);
        if (userAnswer == _localCurrentAnswer) {
            NSLog(@"Correct!");
            _displayCorrrectAnswer.text = @"Correct!";
           
            _plaMan.currentPlayer = [_plaMan.bothPlayers objectAtIndex:0];
            NSLog(@"Current player is %d", [_plaMan.bothPlayers indexOfObject:_plaMan.currentPlayer]);
            _localCP = _plaMan.currentPlayer;
            
            
            _localCP.score += 1;
        _p1ScoreLabel.text = [NSString stringWithFormat:@"%d", _localCP.score];
            
            
        } else {
            NSLog(@"Wrong!");
             _plaMan.currentPlayer = [_plaMan.bothPlayers objectAtIndex:0];
            _localCP = _plaMan.currentPlayer;
            _localCP.score -= 1;
            _displayCorrrectAnswer.text = [NSString stringWithFormat:@"Wrong! correct answer is %d", userAnswer];
            _p1ScoreLabel.text = [NSString stringWithFormat:@"%d", _localCP.score];
        }//else
        
        
        _plaMan.currentPlayer = [_plaMan.bothPlayers objectAtIndex:1];
        
        QuestionManager *nQuesMan = [QuestionManager new];
        [nQuesMan outputQuestion];
        _questionLabel.text = [nQuesMan qString];
        _localCurrentAnswer = [nQuesMan recievedAnswer];
        _cpLabel.text = @"Player 2";
    }//ifPlayer1
    
    
    
    else {
        int userAnswer = [_answerString intValue];
        NSLog(@"The user answered %d", userAnswer);
        if (userAnswer == _localCurrentAnswer) {
            NSLog(@"Correct!");
            _displayCorrrectAnswer.text = @"Correct!";
            
            _plaMan.currentPlayer = [_plaMan.bothPlayers objectAtIndex:1];
            NSLog(@"Current player is %d", [_plaMan.bothPlayers indexOfObject:_plaMan.currentPlayer]);
            _localCP = _plaMan.currentPlayer;
            
            
            _localCP.score += 1;
            _p2ScoreLabel.text = [NSString stringWithFormat:@"%d", _localCP.score];
        } else {
            NSLog(@"Wrong!");
            _plaMan.currentPlayer = [_plaMan.bothPlayers objectAtIndex:1];
            _localCP = _plaMan.currentPlayer;
            _localCP.score -= 1;
            _displayCorrrectAnswer.text = [NSString stringWithFormat:@"Wrong! correct answer is %d", userAnswer];
            _p2ScoreLabel.text = [NSString stringWithFormat:@"%d", _localCP.score];
        }//else
        
        
        _plaMan.currentPlayer = [_plaMan.bothPlayers objectAtIndex:0];
        
        QuestionManager *nQuesMan = [QuestionManager new];
        [nQuesMan outputQuestion];
        _questionLabel.text = [nQuesMan qString];
        _localCurrentAnswer = [nQuesMan recievedAnswer];
        _cpLabel.text = @"Player 1";
    }//ifPlayer2
    
    _answerString = [NSMutableString new];
    _answerLabel.text = @"";
    
}//emter

- (IBAction)restartButton:(id)sender {


    _answerString = [NSMutableString new];
    _plaMan = [PlayerManager new];
    if (!_plaMan.currentPlayer) {
        _plaMan.currentPlayer = [_plaMan.bothPlayers objectAtIndex:0];
        NSLog(@"Current player is %d", [_plaMan.bothPlayers indexOfObject:_plaMan.currentPlayer]);
        _localCP = _plaMan.currentPlayer;
        _cpLabel.text = @"Player 1";
    }
    
    
    QuestionManager *nQuesMan = [QuestionManager new];
    [nQuesMan outputQuestion];
    _questionLabel.text = [nQuesMan qString];
    _localCurrentAnswer = [nQuesMan recievedAnswer];

    for (int i = 0; i < _plaMan.bothPlayers.count; i ++) {
        _plaMan.currentPlayer = [_plaMan.bothPlayers objectAtIndex:i];
        _plaMan.currentPlayer.score = 0;
    }//resetScore
    
    _displayCorrrectAnswer.text = @"";
    _p1ScoreLabel.text = @"Player 1 score: 0";
    _p2ScoreLabel.text = @"Player 2 score: 0";



}//restartButton



@end
