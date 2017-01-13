//
//  ViewController.h
//  Inseert
//
//  Created by Conner Childers on 1/13/17.
//  Copyright © 2017 Conner Childers. All rights reserved.
//

#import <UIKit/UIKit.h>

int jumpValue;


@interface ViewController : UIViewController

{
    IBOutlet UIImageView *you;
    IBOutlet UIImageView *floor;
    IBOutlet UIButton *jump;
    
    NSTimer *fallingTimer;
    
    
    
}

- (void)fallingCode;
- (IBAction)jumpCode:(id)sender;

@end

