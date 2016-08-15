//
//  ffcViewController.h
//  FrenchFlashCards
//
//  Created by Nick Landry on 10/17/13.
//  Copyright (c) 2013 Mobility42. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ffcViewController : UIViewController
{
    int currentQuestionIndex;

    //Model Objects
    NSMutableArray *questions;
    NSMutableArray *answers;
}

//Outlets to output to UI Labels
@property (weak, nonatomic) IBOutlet UILabel *questionField;
@property (weak, nonatomic) IBOutlet UILabel *answerField;

//Actions to handle UI Button taps
- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
