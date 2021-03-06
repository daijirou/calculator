//
//  ViewController.m
//  calculator
//
//  Created by 室岡　大二郎 on 12/11/08.
//  Copyright (c) 2012年 admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController
@synthesize model;
- (void)viewDidLoad
{
    [super viewDidLoad];
    model = [[StateMachine alloc] init];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)dot:(id)sender;{
    [model dot];
    }


- (IBAction)equal:(id)sender { //=を押したとき
    B = [model calc];
    [[self result]setText:[NSString stringWithFormat:@"%g",B]];
}

- (IBAction)zero:(id)sender {   //0を押した時
    A = [model number:0];
    [[self result] setText:[NSString
        stringWithFormat:@"%g", A]];
}

- (IBAction)one:(id)sender {//１を押したとき
   A = [model number:1];
   [[self result] setText:[NSString
        stringWithFormat:@"%g", A]];
}
- (IBAction)two:(id)sender {//２を押したとき
   A = [model number:2];
   [[self result] setText:[NSString
        stringWithFormat:@"%g", A]];
}
- (IBAction)three:(id)sender {//３をを押したとき
   A = [model number:3];
   [[self result] setText:[NSString
        stringWithFormat:@"%g", A]];
}

- (IBAction)four:(id)sender {//4をを押したとき
   A = [model number:4];
   [[self result] setText:[NSString
        stringWithFormat:@"%g", A]];
}
- (IBAction)five:(id)sender{//5をを押したとき
   A = [model number:5];
   [[self result] setText:[NSString
        stringWithFormat:@"%g", A]];
}
- (IBAction)six:(id)sender {//6をを押したとき
   A = [model number:6];
    [[self result] setText:[NSString
        stringWithFormat:@"%g", A]];
}

- (IBAction)seven:(id)sender {//7をを押したとき
   A = [model number:7];
   [[self result] setText:[NSString
        stringWithFormat:@"%g", A]];
}
- (IBAction)eight:(id)sender {//8をを押したとき
   A = [model number:8];
   [[self result] setText:[NSString
        stringWithFormat:@"%g", A]];
}

- (IBAction)nine:(id)sender {//9をを押したとき
    A = [model number:9];
   [[self result] setText:[NSString
        stringWithFormat:@"%g", A]];
}


- (IBAction)AC:(id)sender {
    [model kansuu];
    
     [[self result]setText:[NSString stringWithFormat:@"%d",0]];
}
- (IBAction)plus:(id)sender {//+を押したとき
    B = [model calc];
    [model fugou:1];
    [[self result]setText:[NSString stringWithFormat:@"%d",0]];
    [[self result]setText:[NSString stringWithFormat:@"%g",B]];
    
}

- (IBAction)minus:(id)sender {//-を押したとき
    B = [model calc];
    [model fugou:2];
    [[self result]setText:[NSString stringWithFormat:@"%d",0]];
    
    [[self result]setText:[NSString stringWithFormat:@"%g",B]];
}

- (IBAction)waru:(id)sender {
    B = [model calc];
    [model fugou:4];
    [[self result]setText:[NSString stringWithFormat:@"%d",0]];
       
    [[self result]setText:[NSString stringWithFormat:@"%g",B]];
}

- (IBAction)multiply:(id)sender {
    B = [model calc];
    [model fugou:3];
    [[self result]setText:[NSString stringWithFormat:@"%d",0]];
       
    [[self result]setText:[NSString stringWithFormat:@"%g",B]];
}
@end
