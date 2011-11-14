//
//  QuizAppDelegate.m
//  Quiz
//
//  Created by joeconway on 7/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "QuizAppDelegate.h"

@implementation QuizAppDelegate

- (id) init {
    // call the superclass init
    self = [super init];
    if (self) {
        // create two arrays and make pointers to them
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        // add questions and answers to the attays
        [questions addObject:@"What is 7 + 7?"];
        [answers addObject:@"14"];
        
        [questions addObject:@"What is the capital of Vermont?"];
        [answers addObject:@"Montpelier"];
        
        [questions addObject:@"From what is cognac made?"];
        [answers addObject:@"Grapes"];
        
    }
    
    // return address of new object
    return self;
}

- (IBAction)showQuestion:(id)sender {
    currentQuestionIndex++;
    if (currentQuestionIndex == [questions count]) {
        currentQuestionIndex = 0;
    }
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    NSLog(@"displaying question: %@", question);
    [questionField setText:question];
    [answerField setText:@"???"];
    
}
- (IBAction)showAnswer:(id)sender {
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    [answerField setText:answer];
}

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    [self.window makeKeyAndVisible];
    return YES;
}


@end
