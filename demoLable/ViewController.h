//
//  ViewController.h
//  demoLable
//
//  Created by Acquaint Mac on 24/04/17.
//  Copyright © 2017 Acquaint Mac. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TTTAttributedLabel.h"
@interface ViewController : UIViewController<TTTAttributedLabelDelegate>

{
    IBOutlet TTTAttributedLabel *tttTermAndCondition;
}
@end

