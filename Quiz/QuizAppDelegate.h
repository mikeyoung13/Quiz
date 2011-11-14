//
//  QuizAppDelegate.h
//  Quiz
//
//  Created by joeconway on 7/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizAppDelegate : NSObject <UIApplicationDelegate>
{
    int currentQuestionIndex;
    
    // the model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    // the view objects
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
    
    IBOutlet UIWindow *window;
}
@property (retain, nonatomic) UIWindow *window;

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
