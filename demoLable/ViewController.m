//
//  ViewController.m
//  demoLable
//
//  Created by Acquaint Mac on 24/04/17.
//  Copyright © 2017 Acquaint Mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //tttTermAndCondition = [[TTTAttributedLabel alloc]initWithFrame:CGRectMake(0, 50, 320, 200)];
    NSAttributedString *attString = [[NSAttributedString alloc] initWithString:@"By tapping you agree to the Terms of Use and Privacy Policy."
                                                                    attributes:@{
                                                                                 (id)kCTForegroundColorAttributeName : (id)[UIColor redColor].CGColor,
                                                                                 NSFontAttributeName : [UIFont boldSystemFontOfSize:16],
                                                                                 NSKernAttributeName : [NSNull null],
                                                                                 (id)kTTTBackgroundFillColorAttributeName : (id)[UIColor greenColor].CGColor
                                                                                 }];
    
    // The attributed string is directly set, without inheriting any other text
    // properties of the label.
    tttTermAndCondition.text = attString;
    tttTermAndCondition.delegate = self; // Delegate methods are called when the user taps on a link (see `TTTAttributedLabelDelegate` protocol)
    
    //self.tttTermAndCondition.text = @"Fork me on GitHub! (http://github.com/mattt/TTTAttributedLabel/)"; // Repository URL will be automatically detected and linked
    tttTermAndCondition.enabledTextCheckingTypes = NSTextCheckingTypeLink;
    NSRange range = [tttTermAndCondition.text rangeOfString:@"Terms of Use"];
    [tttTermAndCondition addLinkToURL:[NSURL URLWithString:@"http://github.com/mattt/"] withRange:range];
    //self.se
    //[self.view addSubview:tttTermAndCondition];
    // Do any additional setup after loading the view, typically from a nib.
}


-(void)attributedLabel:(TTTAttributedLabel *)label didSelectLinkWithURL:(NSURL *)url
{
    [[UIApplication sharedApplication] openURL:url options:nil completionHandler:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
