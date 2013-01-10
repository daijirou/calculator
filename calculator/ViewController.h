//
//  ViewController.h
//  calculator
//
//  Created by 室岡　大二郎 on 12/11/08.
//  Copyright (c) 2012年 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{

double x;
double y;
double shou;
int answer;
double Z;
}


@property enum {x,y} state;
@property (weak, nonatomic) IBOutlet UILabel *result;
- (IBAction)zero:(id)sender;
- (IBAction)dot:(id)sender;
- (IBAction)plusminus:(id)sender;
- (IBAction)equarl:(id)sender;
- (IBAction)one:(id)sender;
- (IBAction)two:(id)sender;
- (IBAction)three:(id)sender;
- (IBAction)kakko:(id)sender;
- (IBAction)four:(id)sender;
- (IBAction)five:(id)sender;
- (IBAction)six:(id)sender;
- (IBAction)plus:(id)sender;
- (IBAction)seven:(id)sender;
- (IBAction)eight:(id)sender;
- (IBAction)nine:(id)sender;
- (IBAction)minus:(id)sender;
- (IBAction)AC:(id)sender;
- (IBAction)waru:(id)sender;
- (IBAction)multiply:(id)sender;
- (IBAction)Re:(id)sender;

@end
