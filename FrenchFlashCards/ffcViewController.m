//
//  ffcViewController.m
//  FrenchFlashCards
//
//  Created by Nick Landry on 10/17/13.
//  Copyright (c) 2013 Mobility42. All rights reserved.
//

#import "ffcViewController.h"

@interface ffcViewController ()

@end

@implementation ffcViewController

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        
        // Create two arrays and make the pointers point to them
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        //Alternatively, the following 'modern' syntax can be used
        //answers = [NSMutableArray new];
        
        // Add some English questions and French answers to the array
        [questions addObject:@"Good morning"];
        [answers addObject:@"Bonjour"];
        
        [questions addObject:@"How are you?"];
        [answers addObject:@"Comment allez vous?"];
        
        [questions addObject:@"Yes, please"];
        [answers addObject:@"Oui, s'il vous plaît"];
        
        [questions addObject:@"No, thank you"];
        [answers addObject:@"Non, merci"];
        
        [questions addObject:@"I'm fine, thank you"];
        [answers addObject:@"Je vais bien, merci"];
        
        [questions addObject:@"Please"];
        [answers addObject:@"S'il vous plaît"];
        
        [questions addObject:@"Bye, see you later!"];
        [answers addObject:@"Au revoir, à plus tard!"];
        
        [questions addObject:@"Many thanks!"];
        [answers addObject:@"Merci beaucoup"];
        
        currentQuestionIndex = -1;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showQuestion:(id)sender {
    // Step to the next question
    currentQuestionIndex++;
    
    // Did we reach the last question?
    if (currentQuestionIndex == [questions count]) {
        
        // Go back to the first question
        currentQuestionIndex = 0;
    }
    
    // Get the string at that index in the questions array
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    
    // Log the string to the Xcode console
    NSLog(@"displaying question: %@", question);
    
    // Display the string in the question field
    [_questionField setText:question];
    
    // Clear the answer field
    [_answerField setText:@"???"];
    //Alternatively, the following 'modern' syntax can be used
    //self.answerField.text = @"???";
}

- (IBAction)showAnswer:(id)sender {
    // What is the answer to the current question?
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    // Display it in the answer field
    [_answerField setText:answer];

}
@end
