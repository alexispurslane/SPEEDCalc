//
//  SCViewController.m
//  SPEEDCalc
//
//  Created by Christopher Dumas on 12/30/13.
//  Copyright (c) 2013 LightSpeed Studios. All rights reserved.
//

#import "SCViewController.h"
@interface SCViewController ()

@end

@implementation SCViewController
- (IBAction)button0:(id)sender {
	firstNum = [firstNum stringByAppendingString:@"0"];
}
- (IBAction)button1:(id)sender {
	firstNum = [firstNum stringByAppendingString:@"1"];
}
- (IBAction)button2:(id)sender {
	firstNum = [firstNum stringByAppendingString:@"2"];
}
- (IBAction)button3:(id)sender {
	firstNum = [firstNum stringByAppendingString:@"3"];
}
- (IBAction)button4:(id)sender {
	firstNum = [firstNum stringByAppendingString:@"4"];
}
- (IBAction)button5:(id)sender {
	firstNum = [firstNum stringByAppendingString:@"5"];
}
- (IBAction)button6:(id)sender {
	firstNum = [firstNum stringByAppendingString:@"6"];
}
- (IBAction)button7:(id)sender {
	firstNum = [firstNum stringByAppendingString:@"7"];
}
- (IBAction)button8:(id)sender {
	firstNum = [firstNum stringByAppendingString:@"8"];
}
- (IBAction)button9:(id)sender {
	firstNum = [firstNum stringByAppendingString:@"9"];
}
- (IBAction)buttonEnter:(id)sender {
	NSLog(@"%@", firstNum);
}
- (IBAction)buttonClear:(id)sender {
	firstNum = @"";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	firstNum = @"";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
