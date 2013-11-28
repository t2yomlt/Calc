//
//  ViewController.m
//  Calc
//
//  Created by 越智　達也 on 13/11/14.
//  Copyright (c) 2013年 Univercity of Kitakyushu. All rights reserved.
//

#import "ViewController.h"

int Method;
int SelectNumber;
float RunningTotal;

@interface ViewController ()


@end

@implementation ViewController

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



- (IBAction)ZeroButton:(id)sender {
    
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +0;
    ResultLabel.text = [NSString stringWithFormat:@"%i", SelectNumber];
    
}

- (IBAction)OneButton:(id)sender {
    
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +1;
    ResultLabel.text = [NSString stringWithFormat:@"%i", SelectNumber];
    
}

- (IBAction)TwoButton:(id)sender {
    
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +2;
    ResultLabel.text = [NSString stringWithFormat:@"%i", SelectNumber];
    
}

- (IBAction)ThreeButton:(id)sender {
    
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +3;
    ResultLabel.text = [NSString stringWithFormat:@"%i", SelectNumber];
    
}

- (IBAction)FourButton:(id)sender {
    
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +4;
    ResultLabel.text = [NSString stringWithFormat:@"%i", SelectNumber];
    
}

- (IBAction)FiveButton:(id)sender {
    
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +5;
    ResultLabel.text = [NSString stringWithFormat:@"%i", SelectNumber];
    
}

- (IBAction)SixButton:(id)sender {
    
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +6;
    ResultLabel.text = [NSString stringWithFormat:@"%i", SelectNumber];
    
}

- (IBAction)SevenButton:(id)sender {
    
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +7;
    ResultLabel.text = [NSString stringWithFormat:@"%i", SelectNumber];
    
}

- (IBAction)EightButton:(id)sender {
    
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +8;
    ResultLabel.text = [NSString stringWithFormat:@"%i", SelectNumber];
    
}

- (IBAction)NineButton:(id)sender {
    
    SelectNumber = SelectNumber *10;
    SelectNumber = SelectNumber +9;
    ResultLabel.text = [NSString stringWithFormat:@"%i", SelectNumber];
    
}

- (IBAction)AddButton:(id)sender {
    if (RunningTotal == 0) {
        RunningTotal = SelectNumber;
    }
    Method = 4;
    SelectNumber = 0;
    
}

- (IBAction)SubtractButton:(id)sender {
    if (RunningTotal == 0) {
        RunningTotal = SelectNumber;
    }
    Method = 3;
    SelectNumber = 0;
}

- (IBAction)MultiplyButton:(id)sender {
    if (RunningTotal == 0) {
        RunningTotal = SelectNumber;
    }
    Method = 1;
    SelectNumber = 0;
}

- (IBAction)DevideButton:(id)sender {
    if (RunningTotal == 0) {
        RunningTotal = SelectNumber;
    }
    Method = 2;
    SelectNumber = 0;
}

- (IBAction)EqualButton:(id)sender {
    if (RunningTotal == 0) {
        RunningTotal = SelectNumber;
    }
    else{
        
        switch (Method) {
            case 1:
                RunningTotal = RunningTotal * SelectNumber;
                break;
            case 2:
                RunningTotal = RunningTotal / SelectNumber;
                break;
            case 3:
                RunningTotal = RunningTotal - SelectNumber;
                break;
            case 4:
                RunningTotal = RunningTotal + SelectNumber;
                break;
                
            default:
                break;
        }
    }
    Method = 0;
    SelectNumber = 0;

        ResultLabel.text = [NSString stringWithFormat:@"%.f", RunningTotal];

}

- (IBAction)ClearButton:(id)sender {
    
    Method = 0;
    RunningTotal = 0;
    SelectNumber = 0;
    
    ResultLabel.text = [NSString stringWithFormat:@"0"];
}


@end
