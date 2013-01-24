//
//  StateMachine.h
//  calculator
//
//  Created by 室岡　大二郎 on 13/01/24.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StateMachine : NSObject{
    
    double x;
    double y;
    double shou;
    int answer;
    double Z;
    double w;
    double s;
  

}

- (double)calc;
- (double)number:(double)a;
- (void)fugou:(double)b;
- (void)kansuu;
- (void)dot;

@end
