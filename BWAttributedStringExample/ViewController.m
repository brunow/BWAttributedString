//
//  ViewController.m
//  BWAttributedStringExample
//
//  Created by cesar4 on 10/03/14.
//
//

#import "ViewController.h"

#import "NSAttributedString+BWAttributedString.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.label.text = nil;
    self.label.numberOfLines = 0;
    
    self.label.attributedText = [NSAttributedString attributedStringWithString:@"Hello\nSecond line" properties:^(BWAttributedStringProperties *properties) {
//        properties.backgroundColor = [UIColor lightGrayColor]; Doesn't work why ??
        properties.textColor = [UIColor redColor];
        properties.font = [UIFont boldSystemFontOfSize:25];
        properties.textAlignment = NSTextAlignmentRight;
        properties.lineSpacing = 10;
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
