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
@property (weak, nonatomic) IBOutlet UIButton *save;
@property (weak, nonatomic) IBOutlet UIButton *load;
@property (weak, nonatomic) IBOutlet UIButton *results;
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
@property (weak, nonatomic) IBOutlet UIButton *negate;

@end

@implementation SCViewController
- (IBAction)buttonNegate:(id)sender {
	firstNum = [@"-" stringByAppendingString:firstNum];
	if (!_firstNumDone) {
	    _firstNumLabel.text = firstNum;
	} else {
	    _secondNumLabel.text = firstNum;
	}
}
- (IBAction)buttonSave:(id)sender {
	NSArray *paths = NSSearchPathForDirectoriesInDomains
	(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
	
		//make a file name to write the data to using the documents directory:
    NSString *fileName = [NSString stringWithFormat:@"%@/%@",
						  documentsDirectory, [NSString stringWithFormat:@"%@.dt", [NSDate date]]];
		//create content - four lines of text
    NSString *content = _sumLabel.text;
		//save content to the documents directory
    [content writeToFile:fileName
			  atomically:NO
				encoding:NSStringEncodingConversionAllowLossy
				   error:nil];
}
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
	signed int long sum = 0;
	if ([_operationLabel.text isEqual: @"-"]) {
		sum = [secondNum intValue] - [firstNum intValue];
	} else if ([_operationLabel.text isEqual: @"+"]) {
		sum  = [secondNum intValue] + [firstNum intValue];
	}else if ([_operationLabel.text isEqual: @"×"]) {
		sum = [secondNum intValue] * [firstNum intValue];
	}else if ([_operationLabel.text isEqual: @"÷"]) {
		sum = [secondNum intValue] / [firstNum intValue];
	}
	_firstNumDone = NO;
	_operationLabel.text = @"";
	secondNum = @"";
	firstNum = @"";
	_firstNumLabel.text = firstNum;
	_secondNumLabel.text = firstNum;
	firstNum = [NSString stringWithFormat:@"%ld", sum];
	_firstNumLabel.text = firstNum;
}
- (IBAction)buttonClear:(id)sender {
	firstNum = @"";
	_firstNumLabel.text = firstNum;
	_secondNumLabel.text = firstNum;
	_sumLabel.text = @"";
}
- (IBAction)buttonMultiply:(id)sender {
	secondNum = firstNum;
	firstNum = @"";
	_firstNumDone = YES;
	_operationLabel.text = @"×";
	NSLog(@"M");
}
- (IBAction)buttonDivide:(id)sender {
	secondNum = firstNum;
	firstNum = @"";
	_firstNumDone = YES;
	_operationLabel.text = @"÷";
	NSLog(@"D");
	
}
- (IBAction)buttonAdd:(id)sender {
	secondNum = firstNum;
	firstNum = @"";
	_firstNumDone = YES;
	_operationLabel.text = @"+";
	NSLog(@"A");
	
}
- (IBAction)buttonSubtract:(id)sender {
	secondNum = firstNum;
	firstNum = @"";
	_firstNumDone = YES;
	_operationLabel.text = @"-";
	NSLog(@"S");
}
- (IBAction)buttonResults:(id)sender {
	firstNum = _sumLabel.text;
	_firstNumLabel.text = firstNum;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	firstNum = @"";
	_firstNumDone = NO;
	[_add setBackgroundImage:[UIImage imageNamed:@"operatorRingTouch.png.png"] forState:UIControlStateHighlighted];
	[_results setBackgroundImage:[UIImage imageNamed:@"operatorRingTouch.png.png"] forState:UIControlStateHighlighted];
	[_subtract setBackgroundImage:[UIImage imageNamed:@"operatorRingTouch.png.png"] forState:UIControlStateHighlighted];
	[_multiply setBackgroundImage:[UIImage imageNamed:@"operatorRingTouch.png.png"] forState:UIControlStateHighlighted];
	[_divide setBackgroundImage:[UIImage imageNamed:@"operatorRingTouch.png.png"] forState:UIControlStateHighlighted];
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
	[_negate setBackgroundImage:[UIImage imageNamed:@"operatorRingTouch.png.png"] forState:UIControlStateHighlighted];
	_b0.adjustsImageWhenHighlighted = NO;
	_b1.adjustsImageWhenHighlighted = NO;
	_b2.adjustsImageWhenHighlighted = NO;
	_b3.adjustsImageWhenHighlighted = NO;
	_b4.adjustsImageWhenHighlighted = NO;
	_b5.adjustsImageWhenHighlighted = NO;
	_b6.adjustsImageWhenHighlighted = NO;
	_b7.adjustsImageWhenHighlighted = NO;
	_b8.adjustsImageWhenHighlighted = NO;
	_b9.adjustsImageWhenHighlighted = NO;
	_multiply.adjustsImageWhenHighlighted = NO;
	_add.adjustsImageWhenHighlighted = NO;
	_subtract.adjustsImageWhenHighlighted = NO;
	_divide.adjustsImageWhenHighlighted = NO;
	_results.adjustsImageWhenHighlighted = NO;
	_load.adjustsImageWhenHighlighted = NO;
	_save.adjustsImageWhenHighlighted = NO;
	_negate.adjustsImageWhenHighlighted = NO;
	[_load setBackgroundImage:[UIImage imageNamed:@"operatorRingTouch.png"] forState:UIControlStateHighlighted];
	[_save setBackgroundImage:[UIImage imageNamed:@"operatorRingTouch.png"] forState:UIControlStateHighlighted];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
