//
//  StateMachine.m
//  calculator
//
//  Created by 室岡　大二郎 on 13/01/24.
//  Copyright (c) 2013年 admin. All rights reserved.
//

#import "StateMachine.h"
#
@implementation StateMachine


int keisan=0;
int n=1;
int shou=0;


- (double)calc{
    switch(answer){
        case 1: //足し算の計算
            Z=x+y;//xの入力とyの入力を足す
            
            x=Z;
            y=0;
            keisan=1;
            break;
            
        case 2: //引き算の計算
            Z=x-y;//xの入力とyの入力を引く
            
            x=Z;
            y=0;
            keisan=1;
            break;
            
        case 3://掛け算の計算
            Z=x*y;//xの入力とyの入力を掛ける
            x=Z;
            
            keisan=1;
            break;
            
        case 4://割り算の計算
            Z=x/y;//xの入力とyの入力を割る
            x=Z;
            
            keisan=1;
            break;
    }
    return Z;
}

- (double)number:(double)a{
    switch (keisan) {
            
        case 0:  //最初の入力をxとする
            if(shou == 0){ //整数の計算
                x=x*10+a;
                return x;
                
            }
            else if(shou == 1) //小数の計算
            {
                w=a*pow(10,(-n));//10の-n乗の計算
                s=w+x;
                
                x=s;
                n=n+1;//少数の位置をずらす
                return s;
            }
            
            break;
            
            
            
        case 1: //符号を入力した後の入力ををyとする
            if(shou == 0){ //整数の計算
                y=y*10+a;
                return y;
            }
            else if(shou == 1)//少数の計算
            {
                w=a*pow(10,(-n));
                s=w+y;
                
                y=s;
                n=n+1;
                return s;
            }
            
            break;
    }
    
    return 0;
}

- (void)fugou:(double)b{
    answer = b;
    if (keisan==0) {
        
        keisan=1;
        shou=0;
        n=1;
        
    }else
    {    switch(answer){
        case 1:
            
            
            x=Z;
            y=0;
            keisan=1;
            break;
            
        case 2:
            
            
            x=Z;
            y=0;
            keisan=1;
            break;
            
        case 3:
            
            
            x=Z;
            y=0;
            keisan=1;
            break;
            
        case 4:
            
            
            x=Z;
            y=0;
            keisan=1;
            break;
    }
        
    }
    
}

- (void)kansuu{
    x=0;
    y=0;
    Z=0;
    keisan=0;
    shou=0;
    answer=0;
    w=0;
    s=0;
    n=1;
    
}
- (void)dot{
    shou=1;//少数の計算に移る
}

@end
