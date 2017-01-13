//
//  ViewController.m
//  Inseert
//
//  Created by Conner Childers on 1/13/17.
//  Copyright © 2017 Conner Childers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)jumpCode:(id)sender {
    
    jumpValue = 50;
}

- (void)fallingCode{
    
    jumpValue = jumpValue - 5;
    you.center = CGPointMake(you.center.x, you.center.y -jumpValue);
    
    if(CGRectIntersectsRect(you.frame, floor.frame)){
        jumpValue=0;
        you.center = CGPointMake(you.center.x, floor.center.y - 94);
    }
    
}

- (void)viewDidLoad {
    
    fallingTimer = [NSTimer scheduledTimerWithTimeInterval: 0.05 target:self selector:@selector(fallingCode) userInfo:nil repeats:YES];
    
    
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
