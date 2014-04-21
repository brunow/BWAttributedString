//
//  ViewController.m
//  BWAttributedStringExample
//
//  Created by cesar4 on 10/03/14.
//
//

#import "ViewController.h"

#import "BWAttributedString.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.label.text = nil;
    self.label.numberOfLines = 0;
    
    self.label.attributedText = [NSAttributedString attributedStringWithString:@"Hello\nSecond line" propertiesBlock:^(BWAttributedStringProperties *properties) {
        properties.backgroundColor = [UIColor lightGrayColor];
        properties.textColor = [UIColor redColor];
        properties.font = [UIFont boldSystemFontOfSize:25];
        properties.textAlignment = NSTextAlignmentRight;
        properties.lineSpacing = 10;
    }];
    
    BWAttributedStringProperties *defaultText = [BWAttributedStringProperties attributedProperties];
    defaultText.font = [UIFont systemFontOfSize:12];
    defaultText.textColor = [UIColor blueColor];
    
    BWAttributedStringProperties *boldText = [BWAttributedStringProperties attributedProperties];
    boldText.font = [UIFont boldSystemFontOfSize:14];
    boldText.textColor = [UIColor redColor];
    
    self.label2.attributedText = [NSAttributedString
                                  attributedStringWithString:@"This is text with \"**mardown format**\""
                                  tags:@[ [BWAttributedStringTag attributedStringTag:nil attributedProperties:defaultText], [BWAttributedStringTag attributedStringTag:@"**" attributedProperties:boldText] ]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
