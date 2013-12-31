//
//  SCViewController.m
//  SPEEDCalc
//
//  Created by Christopher Dumas on 12/30/13.
//  Copyright (c) 2013 LightSpeed Studios. All rights reserved.
//

#import "SCViewController.h"
@interface SCViewController (
	
)
@property (weak, nonatomic) IBOutlet UIButton *b0;
@property (weak, nonatomic) IBOutlet UIButton *b9;
@property (weak, nonatomic) IBOutlet UIButton *b8;
@property (weak, nonatomic) IBOutlet UIButton *b7;
@property (weak, nonatomic) IBOutlet UIButton *b6;
@property (weak, nonatomic) IBOutlet UIButton *b5;
@property (weak, nonatomic) IBOutlet UIButton *b4;
@property (weak, nonatomic) IBOutlet UIButton *b3;
@property (weak, nonatomic) IBOutlet UIButton *b2;
@property (weak, nonatomic) IBOutlet UIButton *b1;
@property (weak, nonatomic) IBOutlet UIButton *divide;
@property (weak, nonatomic) IBOutlet UIButton *multiply;
@property (weak, nonatomic) IBOutlet UIButton *subtract;
@property (weak, nonatomic) IBOutlet UIButton *add;
@property (nonatomic) BOOL firstNumDone;
@property (weak, nonatomic) IBOutlet UILabel *firstNumLabel;
@property (weak, nonatomic) IBOutlet UILabel *operationLabel;
@property (weak, nonatomic) IBOutlet UILabel *secondNumLabel;
@property (weak, nonatomic) IBOutlet UILabel *sumLabel;

@end

@implementation SCViewController
- (IBAction)button0:(id)sender {
	firstNum = [firstNum stringByAppendingString:@"0"];
	if (!_firstNumDone) {
	    _firstNumLabel.text = firstNum;
	} else {
	    _secondNumLabel.text = firstNum;
	}
	NSLog(@"%@", firstNum);
}
- (IBAction)button1:(id)sender {
	firstNum = [firstNum stringByAppendingString:@"1"];
	if (!_firstNumDone) {
	    _firstNumLabel.text = firstNum;
	} else {
	    _secondNumLabel.text = firstNum;
	}
	NSLog(@"%@", firstNum);
}

- (IBAction)button2:(id)sender {
	firstNum = [firstNum stringByAppendingString:@"2"];
	if (!_firstNumDone) {
	    _firstNumLabel.text = firstNum;
	} else {
	    _secondNumLabel.text = firstNum;
	}
	NSLog(@"%@", firstNum);
}
- (IBAction)button3:(id)sender {
	firstNum = [firstNum stringByAppendingString:@"3"];
	if (!_firstNumDone) {
	    _firstNumLabel.text = firstNum;
	} else {
	    _secondNumLabel.text = firstNum;
	}
	NSLog(@"%@", firstNum);
}
- (IBAction)button4:(id)sender {
	firstNum = [firstNum stringByAppendingString:@"4"];
	if (!_firstNumDone) {
	    _firstNumLabel.text = firstNum;
	} else {
	    _secondNumLabel.text = firstNum;
	}
	NSLog(@"%@", firstNum);
}
- (IBAction)button5:(id)sender {
	firstNum = [firstNum stringByAppendingString:@"5"];
	if (!_firstNumDone) {
	    _firstNumLabel.text = firstNum;
	} else {
	    _secondNumLabel.text = firstNum;
	}
	NSLog(@"%@", firstNum);
}
- (IBAction)button6:(id)sender {
	firstNum = [firstNum stringByAppendingString:@"6"];
	if (!_firstNumDone) {
	    _firstNumLabel.text = firstNum;
	} else {
	    _secondNumLabel.text = firstNum;
	}
	NSLog(@"%@", firstNum);
}
- (IBAction)button7:(id)sender {
	firstNum = [firstNum stringByAppendingString:@"7"];
	if (!_firstNumDone) {
	    _firstNumLabel.text = firstNum;
	} else {
	    _secondNumLabel.text = firstNum;
	}
	NSLog(@"%@", firstNum);
}
- (IBAction)button8:(id)sender {
	firstNum = [firstNum stringByAppendingString:@"8"];
	if (!_firstNumDone) {
	    _firstNumLabel.text = firstNum;
	} else {
	    _secondNumLabel.text = firstNum;
	}
	NSLog(@"%@", firstNum);
}
- (IBAction)button9:(id)sender {
	firstNum = [firstNum stringByAppendingString:@"9"];
	if (!_firstNumDone) {
	    _firstNumLabel.text = firstNum;
	} else {
	    _secondNumLabel.text = firstNum;
	}
	NSLog(@"%@", firstNum);
}
- (IBAction)buttonEnter:(id)sender {
	NSLog(@"%@", firstNum);
if ([_operationLabel.text isEqual: @"-"]) {
		int sum = [firstNum intValue] - [secondNum intValue];
		_sumLabel.text = [NSString stringWithFormat:@"%i", sum];
	} else if ([_operationLabel.text isEqual: @"+"]) {
		int sum = [firstNum intValue] + [secondNum intValue];
		_sumLabel.text = [NSString stringWithFormat:@"%i", sum];
	}else if ([_operationLabel.text isEqual: @"×"]) {
		int sum = [firstNum intValue] * [secondNum intValue];
		_sumLabel.text = [NSString stringWithFormat:@"%i", sum];
	}else if ([_operationLabel.text isEqual: @"÷"]) {
		int sum = [firstNum intValue] / [secondNum intValue];
		_sumLabel.text = [NSString stringWithFormat:@"%i", sum];
	}
	_firstNumDone = NO;
	_operationLabel.text = @"";
	secondNum = @"";
	firstNum = @"0000";
	_firstNumLabel.text = firstNum;
	_secondNumLabel.text = firstNum;
}
- (IBAction)buttonClear:(id)sender {
	firstNum = @"";
	if (!_firstNumDone) {
	    _firstNumLabel.text = firstNum;
	} else {
	    _secondNumLabel.text = firstNum;
	}
}
- (IBAction)buttonMultiply:(id)sender {
	secondNum = firstNum;
	firstNum = @"";
	_firstNumDone = YES;
	_operationLabel.text = @"×";
}
- (IBAction)buttonDivide:(id)sender {
	secondNum = firstNum;
	firstNum = @"";
	_firstNumDone = YES;
	_operationLabel.text = @"÷";
	
}
- (IBAction)buttonAdd:(id)sender {
	secondNum = firstNum;
	firstNum = @"";
	_firstNumDone = YES;
	_operationLabel.text = @"+";
	
}
- (IBAction)buttonSubtract:(id)sender {
	secondNum = firstNum;
	firstNum = @"";
	_firstNumDone = YES;
	_operationLabel.text = @"-";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	firstNum = @"";
	_firstNumDone = NO;
	[_add setBackgroundImage:[UIImage imageNamed:@"operatorRingTouch.png.png"] forState:UIControlStateHighlighted];
	[_subtract setBackgroundImage:[UIImage imageNamed:@"operatorRingTouch.png.png"] forState:UIControlStateHighlighted];
	[_multiply setBackgroundImage:[UIImage imageNamed:@"operatorRingTouch.png.png"] forState:UIControlStateHighlighted];
	[_b0 setBackgroundImage:[UIImage imageNamed:@"buttonRingTouch.png.png"] forState:UIControlStateHighlighted];
	[_b1 setBackgroundImage:[UIImage imageNamed:@"buttonRingTouch.png.png"] forState:UIControlStateHighlighted];
	[_b2 setBackgroundImage:[UIImage imageNamed:@"buttonRingTouch.png.png"] forState:UIControlStateHighlighted];
	[_b3 setBackgroundImage:[UIImage imageNamed:@"buttonRingTouch.png.png"] forState:UIControlStateHighlighted];
	[_b4 setBackgroundImage:[UIImage imageNamed:@"buttonRingTouch.png.png"] forState:UIControlStateHighlighted];
	[_b5 setBackgroundImage:[UIImage imageNamed:@"buttonRingTouch.png.png"] forState:UIControlStateHighlighted];
	[_b6 setBackgroundImage:[UIImage imageNamed:@"buttonRingTouch.png.png"] forState:UIControlStateHighlighted];
	[_b7 setBackgroundImage:[UIImage imageNamed:@"buttonRingTouch.png.png"] forState:UIControlStateHighlighted];
	[_b8 setBackgroundImage:[UIImage imageNamed:@"buttonRingTouch.png.png"] forState:UIControlStateHighlighted];
	[_b9 setBackgroundImage:[UIImage imageNamed:@"buttonRingTouch.png.png"] forState:UIControlStateHighlighted];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
